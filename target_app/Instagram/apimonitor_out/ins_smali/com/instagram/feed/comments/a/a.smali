.class public final Lcom/instagram/feed/comments/a/a;
.super Ljava/lang/Object;
.source "CommentRowViewBinder.java"
.field private final a:Lcom/instagram/feed/comments/a/g;
.method public constructor <init>(Lcom/instagram/feed/comments/a/g;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/feed/comments/a/a;->a:Lcom/instagram/feed/comments/a/g;
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_comment:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Landroid/view/View;)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/feed/comments/a/a;)Lcom/instagram/feed/comments/a/g;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/comments/a/a;->a:Lcom/instagram/feed/comments/a/g;
return-object v0
.end method
.method private static a(Landroid/view/View;)V
.registers 3
new-instance v1, Lcom/instagram/feed/comments/a/h;
invoke-direct {v1}, Lcom/instagram/feed/comments/a/h;-><init>()V
iput-object p0, v1, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
sget v0, Lcom/facebook/av;->row_comment_imageview:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
sget v0, Lcom/facebook/av;->row_comment_textview_comment:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_comment_textview_time_ago:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->d:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->row_comment_button_action:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;
sget v0, Lcom/facebook/av;->row_comment_progressbar:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;
sget v0, Lcom/facebook/av;->row_caption_divider:I
invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v1, Lcom/instagram/feed/comments/a/h;->g:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-void
.end method
.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_caption_comment:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/instagram/feed/comments/a/a;->a(Landroid/view/View;)V
return-object v0
.end method
.method public final a(Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;Z)V
.registers 9
const/16 v1, 0x8
const/4 v2, 0x0
iget-object v3, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
if-eqz p4, :cond_95
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I
move-result v0
mul-int/lit8 v0, v0, 0x2
:goto_f
invoke-static {v3, v0}, Lcom/instagram/common/u/f;->a(Landroid/view/View;I)V
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->i()I
move-result v0
sget v3, Lcom/instagram/feed/d/d;->b:I
if-ne v0, v3, :cond_22
iget-object v3, p2, Lcom/instagram/feed/comments/a/h;->g:Landroid/view/View;
if-eqz p4, :cond_9d
move v0, v1
:goto_1f
invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V
:cond_22
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/user/c/a;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->b:Lcom/instagram/common/ui/widget/imageview/CircularImageView;
new-instance v3, Lcom/instagram/feed/comments/a/b;
invoke-direct {v3, p0, p3}, Lcom/instagram/feed/comments/a/b;-><init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
invoke-virtual {v0, v3}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v3, Lcom/instagram/feed/d/c;->b:Lcom/instagram/feed/d/c;
if-ne v0, v3, :cond_9f
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;
sget v3, Lcom/facebook/az;->failed:I
invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;
new-instance v3, Lcom/instagram/feed/comments/a/c;
invoke-direct {v3, p0, p3}, Lcom/instagram/feed/comments/a/c;-><init>(Lcom/instagram/feed/comments/a/a;Lcom/instagram/feed/d/b;)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_57
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;
invoke-static {}, Lcom/instagram/feed/d/f;->a()Lcom/instagram/feed/d/f;
move-result-object v3
invoke-virtual {v3, p3}, Lcom/instagram/feed/d/f;->a(Lcom/instagram/feed/d/b;)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->c:Landroid/widget/TextView;
new-instance v3, Landroid/text/method/LinkMovementMethod;
invoke-direct {v3}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->d:Landroid/widget/TextView;
invoke-virtual {p3, p1}, Lcom/instagram/feed/d/b;->a(Landroid/content/Context;)Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p3}, Lcom/instagram/feed/d/b;->h()Lcom/instagram/feed/d/c;
move-result-object v0
sget-object v3, Lcom/instagram/feed/d/c;->c:Lcom/instagram/feed/d/c;
if-ne v0, v3, :cond_a5
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;
invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
:goto_84
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
new-instance v1, Lcom/instagram/feed/comments/a/d;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/instagram/feed/comments/a/d;-><init>(Lcom/instagram/feed/comments/a/a;Landroid/content/Context;Lcom/instagram/feed/comments/a/h;Lcom/instagram/feed/d/b;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
:cond_95
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I
move-result v0
goto/16 :goto_f
:cond_9d
move v0, v2
goto :goto_1f
:cond_9f
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->e:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_57
:cond_a5
iget-object v0, p2, Lcom/instagram/feed/comments/a/h;->f:Landroid/widget/ProgressBar;
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_84
.end method