.class final Lcom/bbm/util/cc;
.super Ljava/lang/Object;
.source "LinkifyUtil.java"
.implements Landroid/text/util/Linkify$MatchFilter;
.field final synthetic a:[Landroid/text/style/ClickableSpan;
.field final synthetic b:Landroid/text/Spannable;
.method constructor <init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/cc;->a:[Landroid/text/style/ClickableSpan;
iput-object p2, p0, Lcom/bbm/util/cc;->b:Landroid/text/Spannable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
.registers 11
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/util/cc;->a:[Landroid/text/style/ClickableSpan;
array-length v3, v2
move v1, v0
:goto_5
if-ge v1, v3, :cond_1d
aget-object v4, v2, v1
iget-object v5, p0, Lcom/bbm/util/cc;->b:Landroid/text/Spannable;
invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v5
iget-object v6, p0, Lcom/bbm/util/cc;->b:Landroid/text/Spannable;
invoke-interface {v6, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v4
if-ge p2, v4, :cond_1a
if-le p3, v5, :cond_1a
:goto_19
return v0
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
const/4 v0, 0x1
goto :goto_19
.end method