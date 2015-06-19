.class final Lcom/instagram/feed/d/g;
.super Ljava/lang/Object;
.source "CommentRenderer.java"
.field private static final a:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
sput v0, Lcom/instagram/feed/d/g;->a:I
return-void
.end method
.method static a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
.registers 14
const/4 v2, 0x0
const/4 v7, 0x0
new-instance v0, Landroid/text/StaticLayout;
sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
move-object v1, p0
move v3, p1
move-object v4, p2
move v5, p3
move v8, v7
move v9, v2
invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I
move-result v0
return v0
.end method
.method private static a(Ljava/lang/String;Landroid/text/TextPaint;I)I
.registers 9
const/4 v0, 0x0
const/4 v5, 0x5
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
invoke-static {p0, v1, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
move-result v1
if-gt v1, v5, :cond_d
:goto_c
return v0
:cond_d
sget v2, Lcom/instagram/feed/d/g;->a:I
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
:cond_13
add-int v3, v1, v2
div-int/lit8 v3, v3, 0x2
invoke-static {p0, v3, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
move-result v4
if-lt v4, v5, :cond_32
if-le v4, v5, :cond_28
move v1, v3
:goto_20
add-int/lit8 v0, v0, 0x1
const/16 v4, 0x14
if-le v0, v4, :cond_13
move v0, v3
goto :goto_c
:cond_28
add-int/lit8 v2, v3, 0x1
invoke-static {p0, v2, p1, p2}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;ILandroid/text/TextPaint;I)I
move-result v2
if-le v2, v5, :cond_32
move v0, v3
goto :goto_c
:cond_32
move v2, v3
goto :goto_20
.end method
.method static a(Landroid/content/res/Resources;Lcom/instagram/feed/d/b;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
.registers 6
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, p2, p3}, Lcom/instagram/feed/d/g;->a(Landroid/content/res/Resources;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p1, v1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V
invoke-static {v0, p1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V
goto :goto_7
.end method
.method private static a(Landroid/content/res/Resources;Ljava/lang/String;Landroid/text/TextPaint;I)Landroid/text/SpannableStringBuilder;
.registers 9
const/4 v2, 0x0
invoke-static {p1, p2, p3}, Lcom/instagram/feed/d/g;->a(Ljava/lang/String;Landroid/text/TextPaint;I)I
move-result v3
if-nez v3, :cond_d
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
:goto_c
return-object v0
:cond_d
move v1, v2
:goto_e
const/16 v0, 0x32
if-ge v1, v0, :cond_4e
sget v0, Lcom/instagram/feed/d/g;->a:I
sub-int v0, v3, v0
sub-int/2addr v0, v1
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v4
invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v4
if-eqz v4, :cond_4a
:goto_21
if-nez v0, :cond_27
sget v0, Lcom/instagram/feed/d/g;->a:I
sub-int v0, v3, v0
:cond_27
new-instance v1, Landroid/text/SpannableStringBuilder;
invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
const-string v2, " [...]"
invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v2, Landroid/text/style/ForegroundColorSpan;
sget v3, Lcom/facebook/as;->grey_light:I
invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
sget v3, Lcom/instagram/feed/d/g;->a:I
add-int/2addr v3, v0
const/16 v4, 0x21
invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
move-object v0, v1
goto :goto_c
:cond_4a
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_e
:cond_4e
move v0, v2
goto :goto_21
.end method
.method public static a(Lcom/instagram/feed/d/b;Z)Landroid/text/SpannableStringBuilder;
.registers 4
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->f()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
invoke-static {v0, p0, p1}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V
invoke-static {v0, p0}, Lcom/instagram/feed/d/g;->a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V
goto :goto_7
.end method
.method static a(Lcom/instagram/feed/d/b;Landroid/text/SpannableStringBuilder;)Ljava/lang/CharSequence;
.registers 7
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->g()Lcom/instagram/user/c/a;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/feed/d/b;->e()Lcom/instagram/feed/d/l;
move-result-object v1
new-instance v2, Landroid/text/SpannableStringBuilder;
invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v3, Lcom/instagram/feed/d/a;
const-string v4, "comment_owner"
invoke-direct {v3, v4, v0, v1}, Lcom/instagram/feed/d/a;-><init>(Ljava/lang/String;Lcom/instagram/user/c/a;Lcom/instagram/feed/d/l;)V
const/4 v1, 0x0
invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v4, 0x21
invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
const-string v0, " "
invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
return-object v2
.end method
.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;)V
.registers 8
const/4 v5, 0x1
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_9
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_26
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/instagram/feed/d/i;
invoke-direct {v2, v1, p1}, Lcom/instagram/feed/d/i;-><init>(Ljava/lang/String;Lcom/instagram/feed/d/b;)V
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I
move-result v1
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I
move-result v3
const/16 v4, 0x21
invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
goto :goto_9
:cond_26
return-void
.end method
.method private static a(Landroid/text/SpannableStringBuilder;Lcom/instagram/feed/d/b;Z)V
.registers 9
const/4 v5, 0x1
invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->b(Ljava/lang/String;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_9
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_26
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/instagram/feed/d/h;
invoke-direct {v2, p2, v1, p1}, Lcom/instagram/feed/d/h;-><init>(ZLjava/lang/String;Lcom/instagram/feed/d/b;)V
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->start(I)I
move-result v1
invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I
move-result v3
const/16 v4, 0x21
invoke-virtual {p0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
goto :goto_9
:cond_26
return-void
.end method