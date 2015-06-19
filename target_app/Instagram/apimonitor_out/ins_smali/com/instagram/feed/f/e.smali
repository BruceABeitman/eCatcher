.class public final Lcom/instagram/feed/f/e;
.super Ljava/lang/Object;
.source "FeedMessageSegment.java"
.field  a:I
.field  b:Ljava/lang/String;
.field  c:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Landroid/text/SpannableString;
.registers 7
const/16 v5, 0x21
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Landroid/text/SpannableString;
iget-object v1, p0, Lcom/instagram/feed/f/e;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
iget-boolean v1, p0, Lcom/instagram/feed/f/e;->c:Z
if-eqz v1, :cond_1b
new-instance v1, Landroid/text/style/StyleSpan;
invoke-direct {v1, v4}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v0}, Landroid/text/SpannableString;->length()I
move-result v2
invoke-virtual {v0, v1, v3, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
:cond_1b
new-instance v1, Landroid/text/style/AbsoluteSizeSpan;
iget v2, p0, Lcom/instagram/feed/f/e;->a:I
invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V
invoke-virtual {v0}, Landroid/text/SpannableString;->length()I
move-result v2
invoke-virtual {v0, v1, v3, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
return-object v0
.end method