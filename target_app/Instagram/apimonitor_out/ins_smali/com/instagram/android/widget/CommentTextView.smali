.class public Lcom/instagram/android/widget/CommentTextView;
.super Landroid/widget/TextView;
.source "CommentTextView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_57
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
float-to-int v1, v1
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getTotalPaddingLeft()I
move-result v2
sub-int/2addr v0, v2
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getTotalPaddingTop()I
move-result v2
sub-int/2addr v1, v2
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getScrollX()I
move-result v2
add-int/2addr v0, v2
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getScrollY()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getLayout()Landroid/text/Layout;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineForVertical(I)I
move-result v1
int-to-float v0, v0
invoke-virtual {v2, v1, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I
move-result v1
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
if-eqz v0, :cond_55
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
instance-of v0, v0, Landroid/text/Spannable;
if-eqz v0, :cond_55
invoke-virtual {p0}, Lcom/instagram/android/widget/CommentTextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
check-cast v0, Landroid/text/Spannable;
const-class v2, Landroid/text/style/ClickableSpan;
invoke-interface {v0, v1, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/ClickableSpan;
array-length v0, v0
if-eqz v0, :cond_55
invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_54
return v0
:cond_55
const/4 v0, 0x0
goto :goto_54
:cond_57
invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_54
.end method