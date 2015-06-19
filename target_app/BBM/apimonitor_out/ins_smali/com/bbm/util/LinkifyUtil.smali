.class public Lcom/bbm/util/LinkifyUtil;
.super Ljava/lang/Object;
.source "LinkifyUtil.java"
.field private static final a:Ljava/util/regex/Pattern;
.field private static final b:Ljava/util/regex/Pattern;
.field private static final c:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x2
const-string v0, "\\b(pin:)?[0-9a-f]{8}\\b"
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/bbm/util/LinkifyUtil;->a:Ljava/util/regex/Pattern;
const-string v0, "\\b[Cc][0-9a-f]{8}\\b"
invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/bbm/util/LinkifyUtil;->b:Ljava/util/regex/Pattern;
const-string v0, "\\b(\\+[0-9]+[\\- \\.]*)?(\\([0-9]+\\)[\\- \\.]*)?([0-9][0-9\\- \\.][0-9\\- \\.]+[0-9])\\b"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/bbm/util/LinkifyUtil;->c:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/text/Spannable;
.registers 7
const/4 v4, 0x0
new-instance v1, Landroid/text/SpannableString;
invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
const/4 v0, 0x3
invoke-static {v1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z
invoke-interface {v1}, Landroid/text/Spannable;->length()I
move-result v0
const-class v2, Landroid/text/style/ClickableSpan;
invoke-interface {v1, v4, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/ClickableSpan;
new-instance v2, Lcom/bbm/util/cc;
invoke-direct {v2, v0, v1}, Lcom/bbm/util/cc;-><init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V
invoke-static {p0, p1, v1, v2}, Lcom/bbm/util/LinkifyUtil;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spannable;Landroid/text/util/Linkify$MatchFilter;)V
:try_start_1e
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;
move-result-object v0
sget-object v3, Lcom/bbm/util/ay;->a:Lcom/bbm/util/ay;
if-eq v0, v3, :cond_2d
invoke-static {p0, p1, v1, v2}, Lcom/bbm/util/LinkifyUtil;->b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spannable;Landroid/text/util/Linkify$MatchFilter;)V
:try_end_2d
.catch Lcom/bbm/j/z; {:try_start_1e .. :try_end_2d} :catch_48
:goto_2d
:cond_2d
invoke-interface {v1}, Landroid/text/Spannable;->length()I
move-result v0
const-class v2, Landroid/text/style/ClickableSpan;
invoke-interface {v1, v4, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/ClickableSpan;
new-instance v2, Lcom/bbm/util/cd;
invoke-direct {v2, v0, v1}, Lcom/bbm/util/cd;-><init>([Landroid/text/style/ClickableSpan;Landroid/text/Spannable;)V
sget-object v0, Lcom/bbm/util/LinkifyUtil;->c:Ljava/util/regex/Pattern;
const-string v3, "tel:"
sget-object v4, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;
invoke-static {v1, v0, v3, v2, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
return-object v1
:catch_48
move-exception v0
goto :goto_2d
.end method
.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spannable;Landroid/text/util/Linkify$MatchFilter;)V
.registers 9
sget-object v0, Lcom/bbm/util/LinkifyUtil;->a:Ljava/util/regex/Pattern;
invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v2
:goto_6
:cond_6
invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z
move-result v0
if-eqz v0, :cond_64
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0xc
if-ne v0, v1, :cond_58
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x4
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
:goto_21
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v3
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_5d
new-instance v0, Lcom/bbm/util/ce;
invoke-direct {v0, p0, v1}, Lcom/bbm/util/ce;-><init>(Landroid/content/Context;Ljava/lang/String;)V
:goto_3c
invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I
move-result v1
invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I
move-result v3
invoke-interface {p3, p1, v1, v3}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z
move-result v1
if-eqz v1, :cond_6
invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I
move-result v1
invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I
move-result v3
const/16 v4, 0x21
invoke-interface {p2, v0, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
goto :goto_6
:cond_58
invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v0
goto :goto_21
:cond_5d
new-instance v1, Lcom/bbm/util/cf;
invoke-direct {v1, p0, v0}, Lcom/bbm/util/cf;-><init>(Landroid/content/Context;Ljava/lang/String;)V
move-object v0, v1
goto :goto_3c
:cond_64
return-void
.end method
.method public static a(Landroid/widget/TextView;)V
.registers 10
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
check-cast v0, Landroid/text/Spannable;
invoke-interface {v0}, Landroid/text/Spannable;->length()I
move-result v1
const-class v2, Landroid/text/style/URLSpan;
invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Landroid/text/style/URLSpan;
array-length v4, v1
move v2, v3
:goto_15
if-ge v2, v4, :cond_33
aget-object v5, v1, v2
invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I
move-result v6
invoke-interface {v0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
move-result v7
invoke-interface {v0, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V
new-instance v8, Lcom/bbm/util/LinkifyUtil$URLSpanNoUnderline;
invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;
move-result-object v5
invoke-direct {v8, v5}, Lcom/bbm/util/LinkifyUtil$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v8, v6, v7, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
add-int/lit8 v2, v2, 0x1
goto :goto_15
:cond_33
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method private static b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spannable;Landroid/text/util/Linkify$MatchFilter;)V
.registers 9
sget-object v0, Lcom/bbm/util/LinkifyUtil;->b:Ljava/util/regex/Pattern;
invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:goto_6
:cond_6
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_31
invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/bbm/util/cg;
invoke-direct {v2, p0, v1}, Lcom/bbm/util/cg;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v1
invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I
move-result v3
invoke-interface {p3, p1, v1, v3}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z
move-result v1
if-eqz v1, :cond_6
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v1
invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I
move-result v3
const/16 v4, 0x21
invoke-interface {p2, v2, v1, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
goto :goto_6
:cond_31
return-void
.end method