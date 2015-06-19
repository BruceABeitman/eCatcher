.class final Lcom/bbm/util/cd;
.super Ljava/lang/Object;
.source "LinkifyUtil.java"
.implements Landroid/text/util/Linkify$MatchFilter;
.field final synthetic a:[Landroid/text/style/ClickableSpan;
.field final synthetic b:Landroid/text/Spannable;
.method constructor <init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/cd;->a:[Landroid/text/style/ClickableSpan;
iput-object p2, p0, Lcom/bbm/util/cd;->b:Landroid/text/Spannable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
.registers 11
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/util/cd;->a:[Landroid/text/style/ClickableSpan;
array-length v3, v2
move v0, v1
:goto_5
if-ge v0, v3, :cond_1e
aget-object v4, v2, v0
iget-object v5, p0, Lcom/bbm/util/cd;->b:Landroid/text/Spannable;
invoke-interface {v5, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v5
iget-object v6, p0, Lcom/bbm/util/cd;->b:Landroid/text/Spannable;
invoke-interface {v6, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v4
if-ge p2, v4, :cond_1b
if-le p3, v5, :cond_1b
move v0, v1
:goto_1a
return v0
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1e
move v0, v1
:goto_1f
if-ge p2, p3, :cond_30
invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C
move-result v2
invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z
move-result v2
if-eqz v2, :cond_2d
add-int/lit8 v0, v0, 0x1
:cond_2d
add-int/lit8 p2, p2, 0x1
goto :goto_1f
:cond_30
const/4 v2, 0x7
if-lt v0, v2, :cond_39
const/16 v2, 0xd
if-gt v0, v2, :cond_39
const/4 v0, 0x1
goto :goto_1a
:cond_39
move v0, v1
goto :goto_1a
.end method