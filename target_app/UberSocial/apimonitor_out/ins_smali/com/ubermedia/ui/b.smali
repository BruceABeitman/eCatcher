.class public Lcom/ubermedia/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/util/regex/Pattern; = null
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field public static final d:I = 0x4
.field public static final e:I = 0x8
.field public static final f:I = 0xf
.field static g:Z
.field public static final h:Ljava/util/regex/Pattern;
.field public static final i:Ljava/util/regex/Pattern;
.field public static final j:Ljava/util/regex/Pattern;
.field public static final k:Ljava/util/regex/Pattern;
.field public static final l:Ljava/util/regex/Pattern;
.field public static final m:Ljava/util/regex/Pattern;
.field public static final n:Ljava/util/regex/Pattern;
.field public static final o:Ljava/util/regex/Pattern;
.field public static final p:Ljava/util/regex/Pattern;
.field public static final q:Ljava/util/regex/Pattern;
.field public static final r:Ljava/util/regex/Pattern;
.field public static final s:Ljava/util/regex/Pattern;
.field public static final t:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 2
const-string v0, "(#[^ \\.,]*)|[^\\.0-9a-zA-Z(), ]?@([a-zA-Z0-9_/-]+)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->a:Ljava/util/regex/Pattern;
const-string v0, "((aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(biz|b[abdefghijmnorstvwyz])|(cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(edu|e[cegrstu])|f[ijkmor]|(gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(info|int|i[delmnoqrst])|(jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(name|net|n[acefgilopruz])|(org|om)|(pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->h:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://plixi.com/[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->i:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://lockerz.com/[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->j:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://twitpic.com/([-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->k:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://mypict.me/([-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->l:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://instagr.am/p/([-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->m:Ljava/util/regex/Pattern;
const-string v0, "\\bhttp://yfrog.com/p/([-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|])"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->n:Ljava/util/regex/Pattern;
const-string v0, "\\b(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;
const-string v0, "((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;
const-string v0, "((25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9]))"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->q:Ljava/util/regex/Pattern;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "(((([a-zA-Z0-9][a-zA-Z0-9\\-]*)*[a-zA-Z0-9]\\.)+"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/ubermedia/ui/b;->h:Ljava/util/regex/Pattern;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Lcom/ubermedia/ui/b;->q:Ljava/util/regex/Pattern;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->r:Ljava/util/regex/Pattern;
const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->s:Ljava/util/regex/Pattern;
const-string v0, "(\\([0-9]{3}\\) [0-9]{3}-[0-9]{4})"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/ubermedia/ui/b;->t:Ljava/util/regex/Pattern;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static final a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
.registers 14
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p3, :cond_66
invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_8
move v9, v2
:goto_9
array-length v3, p1
if-ge v9, v3, :cond_64
aget-object v3, p1, v9
aget-object v4, p1, v9
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
move v4, v2
invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v3
if-eqz v3, :cond_60
aget-object v6, p1, v9
aget-object v3, p1, v9
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v8
move-object v3, v0
move v4, v2
move v5, v2
move v7, v2
invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z
move-result v3
if-nez v3, :cond_4a
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
aget-object v4, p1, v9
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v9
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v4
invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_4a
:cond_4a
if-nez v1, :cond_5f
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
aget-object v2, p1, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_5f
return-object v0
:cond_60
add-int/lit8 v3, v9, 0x1
move v9, v3
goto :goto_9
:cond_64
move v1, v2
goto :goto_4a
:cond_66
move-object v0, p0
goto :goto_8
.end method
.method private static final a(Landroid/widget/TextView;)V
.registers 2
invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;
move-result-object v0
if-eqz v0, :cond_a
instance-of v0, v0, Landroid/text/method/LinkMovementMethod;
if-nez v0, :cond_17
:cond_a
invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z
move-result v0
if-eqz v0, :cond_17
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
:cond_17
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
.registers 11
const/4 v6, 0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/ubermedia/ui/b;->g:Z
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
move-result-object v0
const/4 v1, 0x5
invoke-static {v0, v1}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;I)Z
move-result v1
if-eqz v1, :cond_15
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_15
sget-object v1, Lcom/ubermedia/ui/b;->a:Ljava/util/regex/Pattern;
const/4 v5, 0x0
move-object v2, p1
move-object v3, p2
move-object v4, p3
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_23
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_23
sget-boolean v1, Lcom/ubermedia/ui/b;->g:Z
if-eqz v1, :cond_2d
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
:cond_2d
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-static {p0, p1, p2, v0, v0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)V
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)V
.registers 12
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
move-result-object v0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
:cond_19
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Lcom/ubermedia/ui/c;)V
.registers 10
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, p3
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)V
return-void
.end method
.method public static final a(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
.registers 13
const/4 v5, 0x0
const/4 v6, 0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/ubermedia/ui/b;->g:Z
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
move-result-object v0
const/4 v1, 0x5
invoke-static {v0, v1}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;I)Z
move-result v1
if-eqz v1, :cond_16
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_16
move-object v1, p1
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_22
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_22
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_2e
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_2e
sget-boolean v1, Lcom/ubermedia/ui/b;->g:Z
if-eqz v1, :cond_38
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
:cond_38
return-void
.end method
.method private static final a(Ljava/lang/String;IILandroid/text/Spannable;Lcom/ubermedia/ui/c;)V
.registers 7
new-instance v0, Lcom/ubermedia/ui/MyURLSpan;
invoke-direct {v0, p0, p4}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;Lcom/ubermedia/ui/c;)V
const/16 v1, 0x21
invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
return-void
.end method
.method private static final a(Ljava/util/ArrayList;)V
.registers 9
const/4 v3, -0x1
new-instance v0, Lcom/ubermedia/ui/b$1;
invoke-direct {v0}, Lcom/ubermedia/ui/b$1;-><init>()V
invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
move v4, v0
:goto_f
add-int/lit8 v0, v4, -0x1
if-ge v2, v0, :cond_60
invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/ui/a;
add-int/lit8 v1, v2, 0x1
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ubermedia/ui/a;
iget v5, v0, Lcom/ubermedia/ui/a;->b:I
iget v6, v1, Lcom/ubermedia/ui/a;->b:I
if-gt v5, v6, :cond_5d
iget v5, v0, Lcom/ubermedia/ui/a;->c:I
iget v6, v1, Lcom/ubermedia/ui/a;->b:I
if-le v5, v6, :cond_5d
iget v5, v1, Lcom/ubermedia/ui/a;->c:I
iget v6, v0, Lcom/ubermedia/ui/a;->c:I
if-gt v5, v6, :cond_3e
add-int/lit8 v0, v2, 0x1
:goto_35
if-eq v0, v3, :cond_5d
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v4, -0x1
move v4, v0
goto :goto_f
:cond_3e
iget v5, v0, Lcom/ubermedia/ui/a;->c:I
iget v6, v0, Lcom/ubermedia/ui/a;->b:I
sub-int/2addr v5, v6
iget v6, v1, Lcom/ubermedia/ui/a;->c:I
iget v7, v1, Lcom/ubermedia/ui/a;->b:I
sub-int/2addr v6, v7
if-le v5, v6, :cond_4d
add-int/lit8 v0, v2, 0x1
goto :goto_35
:cond_4d
iget v5, v0, Lcom/ubermedia/ui/a;->c:I
iget v0, v0, Lcom/ubermedia/ui/a;->b:I
sub-int v0, v5, v0
iget v5, v1, Lcom/ubermedia/ui/a;->c:I
iget v1, v1, Lcom/ubermedia/ui/a;->b:I
sub-int v1, v5, v1
if-ge v0, v1, :cond_61
move v0, v2
goto :goto_35
:cond_5d
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_60
return-void
:cond_61
move v0, v3
goto :goto_35
.end method
.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
.registers 8
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
:goto_5
invoke-static {v1}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_11
invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
if-gez v3, :cond_12
:cond_11
return-void
:cond_12
new-instance v4, Lcom/ubermedia/ui/a;
invoke-direct {v4}, Lcom/ubermedia/ui/a;-><init>()V
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v5
add-int/2addr v5, v3
add-int/2addr v3, v0
iput v3, v4, Lcom/ubermedia/ui/a;->b:I
add-int v3, v0, v5
iput v3, v4, Lcom/ubermedia/ui/a;->c:I
invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
add-int/2addr v0, v5
:try_start_28
const-string v3, "UTF-8"
invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_2d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_28 .. :try_end_2d} :catch_47
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "geo:0,0?q="
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iput-object v2, v4, Lcom/ubermedia/ui/a;->a:Ljava/lang/String;
invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_5
:catch_47
move-exception v2
goto :goto_5
.end method
.method private static final a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
.registers 11
invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
:cond_4
:goto_4
invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
move-result v1
if-eqz v1, :cond_32
invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I
move-result v1
invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I
move-result v2
if-eqz p4, :cond_1a
invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z
move-result v3
if-eqz v3, :cond_4
:cond_1a
new-instance v3, Lcom/ubermedia/ui/a;
invoke-direct {v3}, Lcom/ubermedia/ui/a;-><init>()V
const/4 v4, 0x0
invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4, p3, v0, p5}, Lcom/ubermedia/ui/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
move-result-object v4
iput-object v4, v3, Lcom/ubermedia/ui/a;->a:Ljava/lang/String;
iput v1, v3, Lcom/ubermedia/ui/a;->b:I
iput v2, v3, Lcom/ubermedia/ui/a;->c:I
invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4
:cond_32
return-void
.end method
.method public static final a(Ljava/util/ArrayList;Landroid/widget/TextView;Ljava/lang/String;)V
.registers 10
new-instance v2, Landroid/text/SpannableStringBuilder;
invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_46
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/model/twitter/UrlEntity;
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->f()I
move-result v4
invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v1
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v4, Lcom/ubermedia/ui/MyURLSpan;
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->c()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-direct {v4, v5, v6}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;Lcom/ubermedia/ui/c;)V
invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I
move-result v5
const/16 v6, 0x21
invoke-virtual {v2, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->g()I
move-result v0
move v1, v0
goto :goto_b
:cond_46
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-ge v1, v0, :cond_53
invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_53
invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public static final a(Landroid/text/Spannable;I)Z
.registers 16
const/4 v5, 0x0
const/4 v13, 0x1
const/4 v12, 0x0
if-nez p1, :cond_7
move v0, v12
:goto_6
return v0
:cond_7
invoke-interface {p0}, Landroid/text/Spannable;->length()I
move-result v0
const-class v1, Landroid/text/style/URLSpan;
invoke-interface {p0, v12, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/text/style/URLSpan;
array-length v1, v0
add-int/lit8 v1, v1, -0x1
:goto_16
if-ltz v1, :cond_20
aget-object v2, v0, v1
invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V
add-int/lit8 v1, v1, -0x1
goto :goto_16
:cond_20
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
and-int/lit8 v1, p1, 0x1
if-eqz v1, :cond_3c
sget-object v2, Lcom/ubermedia/ui/b;->o:Ljava/util/regex/Pattern;
const/4 v1, 0x2
new-array v3, v1, [Ljava/lang/String;
const-string v1, "http://"
aput-object v1, v3, v12
const-string v1, "https://"
aput-object v1, v3, v13
sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;
move-object v1, p0
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
:cond_3c
and-int/lit8 v1, p1, 0x2
if-eqz v1, :cond_4d
sget-object v2, Lcom/ubermedia/ui/b;->s:Ljava/util/regex/Pattern;
new-array v3, v13, [Ljava/lang/String;
const-string v1, "mailto:"
aput-object v1, v3, v12
move-object v1, p0
move-object v4, v5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
:cond_4d
and-int/lit8 v1, p1, 0x4
if-eqz v1, :cond_62
sget-object v8, Lcom/ubermedia/ui/b;->t:Ljava/util/regex/Pattern;
new-array v9, v13, [Ljava/lang/String;
const-string v1, "tel:"
aput-object v1, v9, v12
sget-object v10, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;
sget-object v11, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;
move-object v6, v0
move-object v7, p0
invoke-static/range {v6 .. v11}, Lcom/ubermedia/ui/b;->a(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
:cond_62
and-int/lit8 v1, p1, 0x8
if-eqz v1, :cond_69
invoke-static {v0, p0}, Lcom/ubermedia/ui/b;->a(Ljava/util/ArrayList;Landroid/text/Spannable;)V
:cond_69
invoke-static {v0}, Lcom/ubermedia/ui/b;->a(Ljava/util/ArrayList;)V
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-nez v1, :cond_74
move v0, v12
goto :goto_6
:cond_74
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_78
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/ubermedia/ui/a;
iget-object v2, v0, Lcom/ubermedia/ui/a;->a:Ljava/lang/String;
iget v3, v0, Lcom/ubermedia/ui/a;->b:I
iget v0, v0, Lcom/ubermedia/ui/a;->c:I
invoke-static {v2, v3, v0, p0, v5}, Lcom/ubermedia/ui/b;->a(Ljava/lang/String;IILandroid/text/Spannable;Lcom/ubermedia/ui/c;)V
goto :goto_78
:cond_8e
move v0, v13
goto/16 :goto_6
.end method
.method public static final a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
.registers 9
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v0
return v0
.end method
.method public static final a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
.registers 14
const/4 v3, 0x1
const/4 v2, 0x0
if-nez p2, :cond_32
const-string v0, ""
:goto_6
invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v5
move v1, v2
:cond_b
:goto_b
invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z
move-result v4
if-eqz v4, :cond_37
invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I
move-result v6
invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I
move-result v7
if-eqz p3, :cond_38
invoke-interface {p3, p0, v6, v7}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z
move-result v4
:goto_1f
if-eqz v4, :cond_b
invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v1
new-array v4, v3, [Ljava/lang/String;
aput-object v0, v4, v2
invoke-static {v1, v4, v5, p4}, Lcom/ubermedia/ui/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v6, v7, p0, p5}, Lcom/ubermedia/ui/b;->a(Ljava/lang/String;IILandroid/text/Spannable;Lcom/ubermedia/ui/c;)V
move v1, v3
goto :goto_b
:cond_32
invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
goto :goto_6
:cond_37
return v1
:cond_38
move v4, v3
goto :goto_1f
.end method
.method public static final a(Landroid/widget/TextView;I)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p1, :cond_6
move v0, v1
:goto_5
return v0
:cond_6
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
instance-of v3, v0, Landroid/text/Spannable;
if-eqz v3, :cond_1d
check-cast v0, Landroid/text/Spannable;
invoke-static {v0, p1}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;I)Z
move-result v0
if-eqz v0, :cond_1b
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
move v0, v2
goto :goto_5
:cond_1b
move v0, v1
goto :goto_5
:cond_1d
invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
move-result-object v0
invoke-static {v0, p1}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;I)Z
move-result v3
if-eqz v3, :cond_2f
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move v0, v2
goto :goto_5
:cond_2f
move v0, v1
goto :goto_5
.end method
.method public static final b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
.registers 13
const/4 v5, 0x0
const/4 v6, 0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/ubermedia/ui/b;->g:Z
invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;
move-result-object v0
const/16 v1, 0xf
invoke-static {v0, v1}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;I)Z
move-result v1
if-eqz v1, :cond_17
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_17
move-object v1, p1
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_23
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_23
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->a(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;Lcom/ubermedia/ui/c;)Z
move-result v1
if-eqz v1, :cond_2f
sput-boolean v6, Lcom/ubermedia/ui/b;->g:Z
:cond_2f
sget-boolean v1, Lcom/ubermedia/ui/b;->g:Z
if-eqz v1, :cond_39
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p0}, Lcom/ubermedia/ui/b;->a(Landroid/widget/TextView;)V
:cond_39
return-void
.end method