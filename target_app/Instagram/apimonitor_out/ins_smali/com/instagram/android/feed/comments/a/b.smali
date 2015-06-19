.class final Lcom/instagram/android/feed/comments/a/b;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"
.implements Lcom/instagram/common/h/d;
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
move-result-object v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_b9
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/comments/a/i;->getCount()I
move-result v2
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/comments/a/i;->a()I
move-result v3
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v4
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_6b
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v0}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
:goto_4a
iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v5
invoke-virtual {v5}, Lcom/instagram/feed/comments/a/i;->a()I
move-result v5
sub-int/2addr v5, v4
if-ge v1, v5, :cond_6d
iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v5}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v5
invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v5
if-eqz v5, :cond_68
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
add-int/2addr v0, v5
:cond_68
add-int/lit8 v1, v1, 0x1
goto :goto_4a
:cond_6b
move v0, v1
goto :goto_4a
:cond_6d
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v1
iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
move-result-object v5
invoke-virtual {v1, v5}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->notifyDataSetChanged()V
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/comments/a/i;->a()I
move-result v1
invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I
move-result v1
iget-object v5, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v5}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v5
invoke-virtual {v5}, Lcom/instagram/feed/comments/a/i;->getCount()I
move-result v5
add-int/2addr v1, v5
sub-int/2addr v1, v2
if-ge v4, v3, :cond_ae
iget-object v2, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v2}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/feed/comments/a/i;->a()I
move-result v2
sub-int v2, v3, v2
add-int/2addr v1, v2
:cond_ae
iget-object v2, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-virtual {v2}, Lcom/instagram/android/feed/comments/a/a;->q_()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, v1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V
goto/16 :goto_9
:cond_b9
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->b(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/comments/a/i;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/feed/comments/a/i;->a(Lcom/instagram/feed/d/l;)V
goto/16 :goto_9
.end method
.method private a(Lcom/instagram/feed/d/q;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p1, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/feed/comments/a/b;->a:Lcom/instagram/android/feed/comments/a/a;
invoke-static {v1}, Lcom/instagram/android/feed/comments/a/a;->a(Lcom/instagram/android/feed/comments/a/a;)Lcom/instagram/feed/d/l;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public final bridge synthetic a(Lcom/instagram/common/h/a;)Z
.registers 3
check-cast p1, Lcom/instagram/feed/d/q;
invoke-direct {p0, p1}, Lcom/instagram/android/feed/comments/a/b;->a(Lcom/instagram/feed/d/q;)Z
move-result v0
return v0
.end method
.method public final synthetic b(Lcom/instagram/common/h/a;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/feed/comments/a/b;->a()V
return-void
.end method