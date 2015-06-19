.class public final Lcom/instagram/android/login/fragment/an;
.super Lcom/instagram/base/a/b;
.source "RegisterFragment.java"
.implements Lcom/instagram/a/b;
.implements Lcom/instagram/android/e/a;
.implements Lcom/instagram/android/login/fragment/cv;
.implements Lcom/instagram/android/nux/e;
.field private static a:I
.field private aA:Lcom/instagram/android/login/fragment/bx;
.field private aB:Lcom/instagram/android/login/fragment/bx;
.field private aC:Lcom/instagram/android/login/fragment/bx;
.field private aD:Z
.field private aE:Z
.field private aF:Z
.field private aG:Z
.field private aH:Ljava/lang/String;
.field private aI:Z
.field private aJ:Ljava/lang/String;
.field private aa:Lcom/instagram/android/login/c/n;
.field private ab:Lcom/instagram/android/d/a;
.field private ac:Lcom/instagram/android/nux/a;
.field private ad:Lcom/instagram/common/c/h;
.field private ae:Lcom/instagram/android/login/k;
.field private af:Lcom/instagram/android/login/k;
.field private ag:Landroid/widget/AutoCompleteTextView;
.field private ah:Landroid/widget/EditText;
.field private ai:Landroid/widget/EditText;
.field private aj:Landroid/widget/EditText;
.field private ak:Landroid/widget/TextView;
.field private al:Landroid/widget/TextView;
.field private am:Landroid/widget/TextView;
.field private an:Landroid/widget/EditText;
.field private ao:Landroid/widget/EditText;
.field private ap:Landroid/widget/ImageView;
.field private aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;
.field private ar:Landroid/view/View;
.field private as:Landroid/view/View;
.field private at:Landroid/view/View;
.field private au:Landroid/view/View;
.field private av:Landroid/view/View;
.field private aw:Lcom/instagram/common/n/a;
.field private ax:Lcom/facebook/i/d;
.field private ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;
.field private az:Lcom/instagram/android/login/fragment/bx;
.field private final b:Lcom/instagram/android/login/fragment/br;
.field private final c:Landroid/os/Handler;
.field private d:Lcom/instagram/quicksand/a;
.field private e:Lcom/instagram/common/a/a/m;
.field private f:Lcom/instagram/android/login/c/j;
.field private g:Lcom/instagram/android/login/fragment/RegisterParameters;
.field private h:Lcom/instagram/android/login/c/a;
.field private i:Lcom/instagram/android/login/c/b;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x2
sput v0, Lcom/instagram/android/login/fragment/an;->a:I
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/android/login/fragment/br;
invoke-direct {v0, p0, v1}, Lcom/instagram/android/login/fragment/br;-><init>(Lcom/instagram/android/login/fragment/an;B)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;
new-instance v0, Lcom/instagram/android/login/fragment/ao;
invoke-direct {v0, p0}, Lcom/instagram/android/login/fragment/ao;-><init>(Lcom/instagram/android/login/fragment/an;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;
sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
sget-object v0, Lcom/instagram/android/login/fragment/bx;->a:Lcom/instagram/android/login/fragment/bx;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aD:Z
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aE:Z
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aF:Z
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aG:Z
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;
iput-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;
return-void
.end method
.method static synthetic A(Lcom/instagram/android/login/fragment/an;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aD:Z
return v0
.end method
.method static synthetic B(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
return-object v0
.end method
.method static synthetic C(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ac()V
return-void
.end method
.method static synthetic D(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/quicksand/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
return-object v0
.end method
.method static synthetic E(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()V
return-void
.end method
.method static synthetic F(Lcom/instagram/android/login/fragment/an;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
return v0
.end method
.method static synthetic U()I
.registers 2
sget v0, Lcom/instagram/android/login/fragment/an;->a:I
add-int/lit8 v1, v0, -0x1
sput v1, Lcom/instagram/android/login/fragment/an;->a:I
return v0
.end method
.method private V()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aG:Z
if-nez v0, :cond_12
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private W()Ljava/lang/String;
.registers 4
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x40
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v1
if-gtz v1, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
const/4 v2, 0x0
invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/instagram/ui/c/c;->a:Ljava/lang/String;
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_d
.end method
.method private X()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->W()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_13
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Ljava/lang/String;)V
:cond_13
return-void
.end method
.method private Y()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V
new-instance v0, Lcom/instagram/android/login/a;
invoke-direct {v0}, Lcom/instagram/android/login/a;-><init>()V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->b:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->c:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v1}, Lcom/instagram/android/d/a;->h()Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->h:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->f:Ljava/lang/String;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-static {v1}, Lcom/instagram/common/v/a;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->e:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->g:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
if-eqz v1, :cond_49
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-virtual {v1}, Lcom/instagram/quicksand/a;->a()V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-virtual {v1}, Lcom/instagram/quicksand/a;->c()Ljava/util/List;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->j:Ljava/util/List;
:cond_49
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v1, v2, :cond_61
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->i:Lcom/instagram/android/login/c/b;
invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/b;->a(Lcom/instagram/android/login/a;)V
:goto_60
return-void
:cond_61
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/instagram/android/login/a;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aa:Lcom/instagram/android/login/c/n;
invoke-virtual {v1, v0}, Lcom/instagram/android/login/c/n;->a(Lcom/instagram/android/login/a;)V
goto :goto_60
.end method
.method private Z()V
.registers 6
const/4 v4, 0x1
sget-object v0, Lcom/instagram/o/b;->S:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v1, v2, :cond_18
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_18
const-string v1, "email_error"
invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
:cond_18
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-ne v1, v2, :cond_29
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_29
const-string v1, "phone_error"
invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
:cond_29
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_34
const-string v1, "username_available"
invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
:cond_34
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_3f
const-string v1, "username_error"
invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
:cond_3f
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_4a
const-string v1, "password_error"
invoke-virtual {v0, v1, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
:cond_4a
const-string v1, "method"
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
invoke-virtual {v2}, Lcom/instagram/android/login/k;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v0
const-wide v2, 0x139b37cbc60L
cmp-long v0, v0, v2
if-gez v0, :cond_70
sget v0, Lcom/facebook/az;->wrong_datetime:I
invoke-static {v0}, Lcom/instagram/n/e;->a(I)V
:goto_6f
return-void
:cond_70
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
sget-object v1, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
if-eq v0, v1, :cond_86
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-le v0, v4, :cond_86
invoke-direct {p0, v4}, Lcom/instagram/android/login/fragment/an;->c(Z)V
goto :goto_6f
:cond_86
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v0, v1, :cond_f8
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/instagram/android/login/fragment/an;->aG:Z
if-nez v1, :cond_9c
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a0
:cond_9c
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Y()V
goto :goto_6f
:cond_a0
new-instance v1, Landroid/text/SpannableStringBuilder;
invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v2, Lcom/facebook/az;->you_entered_your_email_as:I
invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const-string v2, "\n"
invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-static {v0}, Lcom/instagram/common/u/f;->a(Ljava/lang/String;)Landroid/text/Spannable;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
const-string v0, "\n\n"
invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
sget v0, Lcom/facebook/az;->is_this_correct:I
invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v2
invoke-direct {v0, v2}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->yes:I
new-instance v2, Lcom/instagram/android/login/fragment/bq;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bq;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->no:I
new-instance v2, Lcom/instagram/android/login/fragment/bp;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bp;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto/16 :goto_6f
:cond_f8
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Y()V
goto/16 :goto_6f
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)Lcom/instagram/android/login/k;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/quicksand/a;)Lcom/instagram/quicksand/a;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p1}, Landroid/view/View;->clearFocus()V
:cond_c
invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
return-void
.end method
.method private a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
.registers 8
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
invoke-static {p2, v0}, Lcom/instagram/android/login/fragment/bx;->a(Lcom/instagram/android/login/fragment/bx;Landroid/content/Context;)Landroid/graphics/ColorFilter;
move-result-object v1
invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_e
if-ge v0, v3, :cond_1e
aget-object v4, v2, v0
if-eqz v4, :cond_1b
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_1b
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_1e
return-void
.end method
.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
const-string v0, ""
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aI:Z
return-void
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->c(Ljava/lang/String;)V
return-void
.end method
.method private a(Lcom/instagram/android/login/fragment/bx;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method private a(Lcom/instagram/android/login/k;)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
const/4 v3, 0x0
sget-object v0, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-ne p1, v0, :cond_62
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
sget v0, Lcom/facebook/az;->use_email_address:I
invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->f(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
const/16 v1, 0x20
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
sget v1, Lcom/facebook/az;->email:I
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->profile_glyph_email:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V
:goto_61
:cond_61
return-void
:cond_62
sget-object v0, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;
if-ne p1, v0, :cond_61
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V
sget v0, Lcom/facebook/az;->use_phone_number:I
invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->f(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
const-string v1, "0123456789()- "
invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
sget v1, Lcom/facebook/az;->phone:I
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/au;->profile_glyph_phone:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V
goto :goto_61
.end method
.method static synthetic a(Lcom/instagram/android/login/fragment/an;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/login/fragment/an;->aE:Z
return p1
.end method
.method private aa()V
.registers 6
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aF:Z
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v0}, Lcom/instagram/android/d/a;->g()V
:cond_9
new-instance v0, Lcom/instagram/android/login/c/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->y()Landroid/support/v4/app/an;
move-result-object v2
const/4 v3, 0x1
new-instance v4, Lcom/instagram/android/login/fragment/ap;
invoke-direct {v4, p0}, Lcom/instagram/android/login/fragment/ap;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/instagram/android/login/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/f;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->V()Z
move-result v0
if-eqz v0, :cond_27
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->X()V
:cond_27
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/android/login/fragment/ar;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ar;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/android/login/fragment/as;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/as;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/at;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/at;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/instagram/android/login/fragment/au;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/au;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/instagram/android/login/fragment/av;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/av;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/aw;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/aw;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;
new-instance v1, Lcom/instagram/android/login/fragment/ay;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ay;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/az;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/az;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/ba;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/ba;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/bd;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bd;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/android/login/fragment/be;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/be;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/bf;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bf;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
new-instance v1, Lcom/instagram/android/login/fragment/bg;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bg;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/android/login/fragment/bh;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bh;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method private ab()V
.registers 8
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v0
invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;
move-result-object v2
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
array-length v4, v2
move v0, v1
:goto_14
if-ge v0, v4, :cond_30
aget-object v5, v2, v0
iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-static {v6}, Lcom/instagram/common/u/e;->b(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_2d
iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-interface {v3, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_2d
iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;
invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2d
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_30
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_37
:goto_36
return-void
:cond_37
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
new-instance v2, Landroid/widget/ArrayAdapter;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v3
sget v4, Lcom/facebook/aw;->row_autocomplete_email:I
invoke-direct {v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
iget-object v3, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v4, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v3, v4, :cond_5f
aget-object v0, v0, v1
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
goto :goto_36
:cond_5f
aget-object v0, v0, v1
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V
goto :goto_36
.end method
.method private ac()V
.registers 2
sget-object v0, Lcom/instagram/o/b;->O:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/share/b/a;->b()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v0}, Lcom/instagram/android/d/a;->g()V
iget-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aE:Z
if-nez v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;
invoke-virtual {v0}, Lcom/instagram/android/nux/a;->b()V
:cond_16
return-void
.end method
.method private ad()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/common/u/f;->a(Landroid/content/Context;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
return-void
.end method
.method private ae()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private af()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private ag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private ah()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private ai()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private aj()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private ak()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private al()V
.registers 4
invoke-static {}, Lcom/instagram/common/v/a;->a()Ljava/lang/String;
move-result-object v0
const-string v1, "-"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/instagram/android/login/c/j;
const-string v2, "signup"
invoke-direct {v1, v2, v0}, Lcom/instagram/android/login/c/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/j;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/j;
new-instance v1, Lcom/instagram/android/login/fragment/bu;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/instagram/android/login/fragment/bu;-><init>(Lcom/instagram/android/login/fragment/an;B)V
invoke-virtual {v0, v1}, Lcom/instagram/android/login/c/j;->a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->e:Lcom/instagram/common/a/a/m;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->f:Lcom/instagram/android/login/c/j;
invoke-interface {v0, v1}, Lcom/instagram/common/a/a/m;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method private am()V
.registers 6
const/4 v4, 0x1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
instance-of v0, v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
if-eqz v0, :cond_12
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/android/nux/SignedOutFragmentActivity;
invoke-virtual {v0}, Lcom/instagram/android/nux/SignedOutFragmentActivity;->g()V
:cond_12
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {}, Lcom/instagram/common/q/b/i;->a()Lcom/instagram/common/q/b/h;
move-result-object v1
invoke-interface {v1, v0}, Lcom/instagram/common/q/b/h;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/instagram/share/b/a;->c()Z
move-result v0
if-eqz v0, :cond_26
invoke-static {}, Lcom/instagram/share/b/a;->d()V
:cond_26
invoke-static {}, Lcom/instagram/share/f/a;->c()Z
move-result v0
if-eqz v0, :cond_2f
invoke-static {}, Lcom/instagram/share/f/a;->d()V
:cond_2f
invoke-static {}, Lcom/instagram/share/vkontakte/a;->d()Z
move-result v0
if-eqz v0, :cond_38
invoke-static {}, Lcom/instagram/share/vkontakte/a;->e()V
:cond_38
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v1
if-eqz v1, :cond_64
invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_64
new-instance v1, Lcom/instagram/android/fragment/fj;
invoke-direct {v1}, Lcom/instagram/android/fragment/fj;-><init>()V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v0}, Lcom/facebook/b/b;->c()Ljava/lang/String;
move-result-object v0
sget v2, Lcom/facebook/az;->find_friends_item_facebook_friends:I
invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v1, v0, v2, v4, v3}, Lcom/instagram/android/fragment/fj;->a(Landroid/support/v4/app/s;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
:goto_63
return-void
:cond_64
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v0, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_IS_SIGN_UP_FLOW"
invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/instagram/share/vkontakte/a;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_92
new-instance v0, Lcom/instagram/android/fragment/bw;
invoke-direct {v0}, Lcom/instagram/android/fragment/bw;-><init>()V
:goto_7d
new-instance v2, Lcom/instagram/base/a/a/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
invoke-virtual {v2, v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
goto :goto_63
:cond_92
new-instance v0, Lcom/instagram/android/fragment/bh;
invoke-direct {v0}, Lcom/instagram/android/fragment/bh;-><init>()V
goto :goto_7d
.end method
.method private an()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aw:Lcom/instagram/common/n/a;
invoke-virtual {v0}, Lcom/instagram/common/n/a;->a()Ljava/lang/String;
move-result-object v0
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2c
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "+"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;
invoke-virtual {v2, v0}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2b
return-object v0
:cond_2c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "+"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;
const-string v2, "US"
invoke-virtual {v1, v2}, Lcom/facebook/i/d;->a(Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2b
.end method
.method private ao()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-ne v0, v1, :cond_41
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v0
:goto_15
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_3a
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/4 v1, 0x6
if-lt v0, v1, :cond_3a
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_46
:cond_3a
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_a
:cond_41
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
goto :goto_15
:cond_46
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z
move-result v0
if-nez v0, :cond_53
sget-object v0, Lcom/instagram/o/b;->R:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
:cond_53
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
goto :goto_a
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->am()V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/k;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/k;)V
return-void
.end method
.method static synthetic b(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V
return-void
.end method
.method private b(Lcom/instagram/android/login/fragment/bx;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method private b(Lcom/instagram/android/nux/j;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Z)V
invoke-virtual {p1}, Lcom/instagram/android/nux/j;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p1}, Lcom/instagram/android/nux/j;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->h(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->M:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
:cond_22
return-void
.end method
.method private b(Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->email_suggestion_title:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0, p1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->yes:I
new-instance v2, Lcom/instagram/android/login/fragment/bl;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/login/fragment/bl;-><init>(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
sget v1, Lcom/facebook/az;->no:I
new-instance v2, Lcom/instagram/android/login/fragment/bm;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/bm;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/an;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method private c(Lcom/instagram/android/login/fragment/bx;)V
.registers 5
const/4 v0, 0x1
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v1, v2}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
sget-object v2, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
if-ne v1, v2, :cond_20
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-le v1, v0, :cond_20
:goto_1c
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Z)V
return-void
:cond_20
const/4 v0, 0x0
goto :goto_1c
.end method
.method private c(Ljava/lang/String;)V
.registers 4
if-nez p1, :cond_6
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object p1
:cond_6
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
invoke-static {p1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
if-eqz v0, :cond_1b
sget-object v0, Lcom/instagram/android/login/fragment/bx;->b:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;
invoke-virtual {v1}, Lcom/instagram/android/login/c/a;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1b
if-eqz v0, :cond_39
sget-object v0, Lcom/instagram/o/b;->y:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "username"
invoke-virtual {v0, v1, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
:cond_39
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/login/c/a;->a(Ljava/lang/String;)V
goto :goto_1b
.end method
.method private c(Z)V
.registers 9
const/4 v6, 0x0
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v0
new-array v1, v6, [Ljava/lang/String;
invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget v2, Lcom/facebook/az;->username_taken:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "<b>"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "</b>"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v6
invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/an;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "<br/>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget v2, Lcom/facebook/az;->here_are_some_suggestions:I
invoke-virtual {p0, v2}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v1
new-instance v2, Lcom/instagram/ui/dialog/b;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v2, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/ui/dialog/b;->b()Lcom/instagram/ui/dialog/b;
move-result-object v1
new-instance v2, Lcom/instagram/android/login/fragment/bo;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/login/fragment/bo;-><init>(Lcom/instagram/android/login/fragment/an;Z)V
invoke-virtual {v1, v0, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ak()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/an;Lcom/instagram/android/login/fragment/bx;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method static synthetic d(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->g(Ljava/lang/String;)V
return-void
.end method
.method private d(Lcom/instagram/android/login/fragment/bx;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Lcom/instagram/android/login/fragment/bx;)V
return-void
.end method
.method private d(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method private d(Z)V
.registers 4
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;
if-eqz p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_9
const/16 v0, 0x8
goto :goto_5
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/an;->aH:Ljava/lang/String;
return-object p1
.end method
.method private e(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method private e(Z)V
.registers 8
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;
move-result-object v1
if-eqz p1, :cond_28
sget v0, Lcom/facebook/as;->grey_2:I
:goto_8
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_14
if-ge v0, v3, :cond_2b
aget-object v4, v2, v0
if-eqz v4, :cond_25
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-static {v1}, Lcom/instagram/common/ui/colorfilter/a;->a(I)Landroid/graphics/ColorFilter;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:cond_25
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_28
sget v0, Lcom/facebook/as;->accent_blue_medium:I
goto :goto_8
:cond_2b
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->o()Landroid/content/res/Resources;
move-result-object v1
if-eqz p1, :cond_42
sget v0, Lcom/facebook/as;->grey_medium:I
:goto_33
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V
return-void
:cond_42
sget v0, Lcom/facebook/as;->accent_blue_medium:I
goto :goto_33
.end method
.method static synthetic f(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aj()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic f(Lcom/instagram/android/login/fragment/an;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Ljava/lang/String;)V
return-void
.end method
.method private f(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method static synthetic g(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/d/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
return-object v0
.end method
.method private g(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method static synthetic h(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ag()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private h(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method static synthetic i(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private i(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method static synthetic j(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aJ:Ljava/lang/String;
return-object v0
.end method
.method static synthetic k(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->W()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic l(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->X()V
return-void
.end method
.method static synthetic m(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/RegisterParameters;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
return-object v0
.end method
.method static synthetic n(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ao()V
return-void
.end method
.method static synthetic o(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Z()V
return-void
.end method
.method static synthetic p(Lcom/instagram/android/login/fragment/an;)Landroid/widget/AutoCompleteTextView;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
return-object v0
.end method
.method static synthetic q(Lcom/instagram/android/login/fragment/an;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic r(Lcom/instagram/android/login/fragment/an;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->Y()V
return-void
.end method
.method static synthetic s(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->h:Lcom/instagram/android/login/c/a;
return-object v0
.end method
.method static synthetic t(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/ui/widget/spinner/RefreshSpinner;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;
return-object v0
.end method
.method static synthetic u(Lcom/instagram/android/login/fragment/an;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/login/fragment/an;->aD:Z
return v0
.end method
.method static synthetic v(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/k;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
return-object v0
.end method
.method static synthetic w(Lcom/instagram/android/login/fragment/an;)Lcom/facebook/i/d;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;
return-object v0
.end method
.method static synthetic x(Lcom/instagram/android/login/fragment/an;)Lcom/instagram/android/login/fragment/bx;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
return-object v0
.end method
.method static synthetic y(Lcom/instagram/android/login/fragment/an;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;
return-object v0
.end method
.method static synthetic z(Lcom/instagram/android/login/fragment/an;)V
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Z)V
return-void
.end method
.method public final E()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-virtual {v0}, Lcom/instagram/quicksand/a;->b()Z
move-result v0
if-nez v0, :cond_1e
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
:goto_1d
return-void
:cond_1e
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()V
goto :goto_1d
:cond_22
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->al()V
goto :goto_1d
.end method
.method public final F()V
.registers 2
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/c/h;
invoke-interface {v0}, Lcom/instagram/common/c/h;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-virtual {v0}, Lcom/instagram/quicksand/a;->a()V
:cond_11
return-void
.end method
.method public final G()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v0}, Lcom/instagram/android/d/a;->d()V
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
const/16 v3, 0x8
const/4 v5, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
sget v0, Lcom/facebook/aw;->fragment_register:I
invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->email:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/AutoCompleteTextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
sget v0, Lcom/facebook/av;->phone:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
sget v0, Lcom/facebook/av;->phone_toggle:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->country_code:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->username:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
sget v0, Lcom/facebook/av;->password:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
sget v0, Lcom/facebook/av;->use_my_facebook_info:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
sget v0, Lcom/facebook/av;->name:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
sget v0, Lcom/facebook/av;->optional_contact:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
sget v0, Lcom/facebook/av;->avatar:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;
sget v0, Lcom/facebook/av;->fragment_sign_up_username_spinner:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/spinner/RefreshSpinner;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;
sget v0, Lcom/facebook/av;->username_background:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;
sget v0, Lcom/facebook/av;->show_suggested_usernames:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;
sget v0, Lcom/facebook/av;->show_suggested_usernames_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;
sget v0, Lcom/facebook/av;->phone_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
new-instance v2, Landroid/text/method/PasswordTransformationMethod;
invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;
if-eq v0, v2, :cond_c1
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->am:Landroid/widget/TextView;
invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/k;)V
:cond_c1
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->az:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/login/fragment/bx;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aC:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/bx;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aA:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aB:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Lcom/instagram/android/login/fragment/bx;)V
invoke-direct {p0, v7}, Lcom/instagram/android/login/fragment/an;->e(Z)V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v0
if-eqz v0, :cond_e9
iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aF:Z
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
:cond_e9
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->an()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_23c
sget-object v0, Lcom/instagram/o/b;->L:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->d(Ljava/lang/String;)V
iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aG:Z
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V
:goto_10d
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_134
sget-object v0, Lcom/instagram/o/b;->K:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->g(Ljava/lang/String;)V
iput-boolean v7, p0, Lcom/instagram/android/login/fragment/an;->aD:Z
sget-object v0, Lcom/instagram/android/login/fragment/bx;->c:Lcom/instagram/android/login/fragment/bx;
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->c(Lcom/instagram/android/login/fragment/bx;)V
:cond_134
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->c()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_14a
sget-object v0, Lcom/instagram/o/b;->M:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->c()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->h(Ljava/lang/String;)V
:cond_14a
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->d()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_161
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v0, v2, :cond_161
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;->d()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->i(Ljava/lang/String;)V
:cond_161
new-instance v0, Lcom/instagram/android/login/fragment/bs;
invoke-direct {v0, p0, v6}, Lcom/instagram/android/login/fragment/bs;-><init>(Lcom/instagram/android/login/fragment/an;B)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-boolean v2, p0, Lcom/instagram/android/login/fragment/an;->aG:Z
if-nez v2, :cond_179
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
new-instance v3, Lcom/instagram/android/login/fragment/bn;
invoke-direct {v3, p0}, Lcom/instagram/android/login/fragment/bn;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
:cond_179
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
new-array v2, v7, [Landroid/text/InputFilter;
new-instance v3, Lcom/instagram/android/login/fragment/bw;
invoke-direct {v3, v6}, Lcom/instagram/android/login/fragment/bw;-><init>(B)V
aput-object v3, v2, v6
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
new-array v2, v5, [Landroid/text/InputFilter;
new-instance v3, Lcom/instagram/ui/c/c;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Lcom/instagram/ui/c/c;-><init>(Landroid/content/Context;)V
aput-object v3, v2, v6
new-instance v3, Landroid/text/InputFilter$LengthFilter;
const/16 v4, 0x1e
invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V
aput-object v3, v2, v7
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
const/16 v2, 0x90
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-interface {v0, v2}, Lcom/instagram/common/analytics/d;->a(Landroid/widget/TextView;)V
sget v0, Lcom/facebook/av;->tos_warning:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
new-instance v2, Landroid/text/method/LinkMovementMethod;
invoke-direct {v2}, Landroid/text/method/LinkMovementMethod;-><init>()V
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
sget v2, Lcom/facebook/az;->tos_warning_with_privacy_policy:I
new-array v3, v5, [Ljava/lang/Object;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/terms/&quot;&gt;"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v5, Lcom/facebook/az;->terms_of_service:I
invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "&lt;/a&gt"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v4
aput-object v4, v3, v6
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "&lt;a href=&quot;http://instagram.com/about/legal/privacy/&quot;&gt;"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v5, Lcom/facebook/az;->privacy_policy:I
invoke-virtual {p0, v5}, Lcom/instagram/android/login/fragment/an;->c(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "&lt;/a&gt"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v4
aput-object v4, v3, v7
invoke-virtual {p0, v2, v3}, Lcom/instagram/android/login/fragment/an;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v1
:cond_23c
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ab()V
goto/16 :goto_10d
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;
invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
const/4 v1, 0x1
invoke-virtual {v0, p1, p2, p3, v1}, Lcom/instagram/android/d/a;->a(IILandroid/content/Intent;Z)V
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_7
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 3
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_7
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/common/a/a/i;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->y()Landroid/support/v4/app/an;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/instagram/common/a/a/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->e:Lcom/instagram/common/a/a/m;
new-instance v0, Lcom/instagram/android/d/a;
invoke-direct {v0, p0, p1}, Lcom/instagram/android/d/a;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_8f
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8f
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "com.instagram.android.login.fragment.RegisterFragment.ARGUMENT_PARAMETERS"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/instagram/android/login/fragment/RegisterParameters;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
:goto_39
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
const-string v1, "phone"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
new-instance v1, Lcom/instagram/common/n/a;
invoke-direct {v1, v0}, Lcom/instagram/common/n/a;-><init>(Landroid/telephony/TelephonyManager;)V
iput-object v1, p0, Lcom/instagram/android/login/fragment/an;->aw:Lcom/instagram/common/n/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/facebook/i/d;->a(Landroid/content/Context;)Lcom/facebook/i/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ax:Lcom/facebook/i/d;
new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-direct {v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ay:Landroid/telephony/PhoneNumberFormattingTextWatcher;
invoke-static {}, Lcom/instagram/android/login/k;->b()Lcom/instagram/android/login/k;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/share/f/a;->a(Z)V
sget-object v0, Lcom/instagram/o/b;->w:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->b()Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "method"
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->ae:Lcom/instagram/android/login/k;
invoke-virtual {v2}, Lcom/instagram/android/login/k;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "qe_synching"
invoke-static {}, Lcom/instagram/l/j;->a()Lcom/instagram/l/i;
move-result-object v2
invoke-interface {v2}, Lcom/instagram/l/i;->b()Z
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
return-void
:cond_8f
new-instance v0, Lcom/instagram/android/login/fragment/RegisterParameters;
invoke-direct {v0}, Lcom/instagram/android/login/fragment/RegisterParameters;-><init>()V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->g:Lcom/instagram/android/login/fragment/RegisterParameters;
goto :goto_39
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/b;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v0}, Lcom/instagram/android/d/a;->a()V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
sget v0, Lcom/facebook/az;->new_account:I
new-instance v1, Lcom/instagram/android/login/fragment/bi;
invoke-direct {v1, p0}, Lcom/instagram/android/login/fragment/bi;-><init>(Lcom/instagram/android/login/fragment/an;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->c(ILandroid/view/View$OnClickListener;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ao()V
return-void
.end method
.method public final a(Lcom/instagram/android/nux/j;)V
.registers 2
if-eqz p1, :cond_5
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/an;->b(Lcom/instagram/android/nux/j;)V
:cond_5
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x2
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
const/4 v1, 0x4
invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v3, :cond_13
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
invoke-virtual {v0, v3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V
:cond_13
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
invoke-direct {p0, v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/widget/TextView;Ljava/lang/String;)V
return-void
.end method
.method public final b()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->am()V
return-void
.end method
.method public final c()V
.registers 2
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->e(Z)V
return-void
.end method
.method public final d()V
.registers 4
sget-object v0, Lcom/instagram/o/b;->N:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v1
if-eqz v1, :cond_13
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ac()V
:goto_12
return-void
:cond_13
sget-object v1, Lcom/instagram/share/b/f;->c:[Ljava/lang/String;
iget-object v2, p0, Lcom/instagram/android/login/fragment/an;->b:Lcom/instagram/android/login/fragment/br;
invoke-virtual {v0, p0, v1, v2}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
goto :goto_12
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 12
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->d(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/android/nux/a;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/instagram/android/nux/a;-><init>(Landroid/app/Activity;Lcom/instagram/android/nux/e;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->aa()V
new-instance v6, Lcom/instagram/android/login/c/b;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v7
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->y()Landroid/support/v4/app/an;
move-result-object v8
sget v9, Lcom/instagram/android/login/c/d;->a:I
new-instance v0, Lcom/instagram/android/login/fragment/bb;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;
move-result-object v4
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v5
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/login/fragment/bb;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;Landroid/app/Activity;)V
invoke-direct {v6, v7, v8, v9, v0}, Lcom/instagram/android/login/c/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
iput-object v6, p0, Lcom/instagram/android/login/fragment/an;->i:Lcom/instagram/android/login/c/b;
new-instance v0, Lcom/instagram/android/login/c/n;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->y()Landroid/support/v4/app/an;
move-result-object v2
new-instance v3, Lcom/instagram/android/login/fragment/bj;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v4
iget-object v5, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->p()Landroid/support/v4/app/s;
move-result-object v6
invoke-direct {v3, p0, v4, v5, v6}, Lcom/instagram/android/login/fragment/bj;-><init>(Lcom/instagram/android/login/fragment/an;Landroid/content/Context;Landroid/os/Handler;Landroid/support/v4/app/s;)V
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/android/login/c/n;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->aa:Lcom/instagram/android/login/c/n;
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Lcom/instagram/g/c;->a(Landroid/app/Activity;)Lcom/instagram/common/c/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/login/fragment/an;->ad:Lcom/instagram/common/c/h;
return-void
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ab:Lcom/instagram/android/d/a;
invoke-virtual {v0, p1}, Lcom/instagram/android/d/a;->a(Landroid/os/Bundle;)V
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->e(Landroid/os/Bundle;)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "register"
return-object v0
.end method
.method public final j_()V
.registers 4
const/4 v0, 0x0
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-eq v1, v2, :cond_23
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ae()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_23
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
:cond_16
:goto_16
if-eqz v0, :cond_22
invoke-direct {p0, v0}, Lcom/instagram/android/login/fragment/an;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/common/u/f;->b(Landroid/content/Context;Landroid/view/View;)V
:cond_22
return-void
:cond_23
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->af:Lcom/instagram/android/login/k;
sget-object v2, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
if-ne v1, v2, :cond_36
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->af()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_36
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
goto :goto_16
:cond_36
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ah()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_49
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->V()Z
move-result v1
if-nez v1, :cond_16
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
goto :goto_16
:cond_49
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ai()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_16
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
goto :goto_16
.end method
.method public final k_()V
.registers 1
invoke-direct {p0}, Lcom/instagram/android/login/fragment/an;->ad()V
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
return-void
.end method
.method public final l_()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->c:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->b(Landroid/widget/TextView;)V
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ag:Landroid/widget/AutoCompleteTextView;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ah:Landroid/widget/EditText;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ai:Landroid/widget/EditText;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aj:Landroid/widget/EditText;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ak:Landroid/widget/TextView;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->an:Landroid/widget/EditText;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ao:Landroid/widget/EditText;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ap:Landroid/widget/ImageView;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->aq:Lcom/instagram/ui/widget/spinner/RefreshSpinner;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->ar:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->as:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->at:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->au:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->av:Landroid/view/View;
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->al:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
if-eqz v0, :cond_6f
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
invoke-virtual {v0}, Lcom/instagram/quicksand/a;->a()V
iput-object v2, p0, Lcom/instagram/android/login/fragment/an;->d:Lcom/instagram/quicksand/a;
:cond_6f
iget-object v0, p0, Lcom/instagram/android/login/fragment/an;->ac:Lcom/instagram/android/nux/a;
invoke-virtual {v0}, Lcom/instagram/android/nux/a;->a()V
invoke-super {p0}, Lcom/instagram/base/a/b;->l_()V
return-void
.end method