.class public final Lcom/google/zxing/client/android/book/SearchBookContentsListItem;
.super Landroid/widget/LinearLayout;
.source "SearchBookContentsListItem.java"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/TextView;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected final onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
sget v0, Lcom/google/zxing/client/android/w;->page_number_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->a:Landroid/widget/TextView;
sget v0, Lcom/google/zxing/client/android/w;->snippet_view:I
invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->b:Landroid/widget/TextView;
return-void
.end method
.method public final set(Lcom/google/zxing/client/android/book/g;)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->a:Landroid/widget/TextView;
iget-object v2, p1, Lcom/google/zxing/client/android/book/g;->c:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p1, Lcom/google/zxing/client/android/book/g;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_4f
iget-boolean v2, p1, Lcom/google/zxing/client/android/book/g;->e:Z
if-eqz v2, :cond_49
sget-object v2, Lcom/google/zxing/client/android/book/g;->a:Ljava/lang/String;
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
new-instance v4, Landroid/text/SpannableString;
invoke-direct {v4, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v5, Landroid/text/style/StyleSpan;
const/4 v0, 0x1
invoke-direct {v5, v0}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v6
move v0, v1
:goto_36
invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I
move-result v0
if-ltz v0, :cond_43
add-int v7, v0, v6
invoke-interface {v4, v5, v0, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
add-int/2addr v0, v6
goto :goto_36
:cond_43
iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->b:Landroid/widget/TextView;
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_48
return-void
:cond_49
iget-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->b:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_48
:cond_4f
iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsListItem;->b:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_48
.end method