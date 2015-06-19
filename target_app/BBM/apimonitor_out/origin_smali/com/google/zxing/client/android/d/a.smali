.class public final Lcom/google/zxing/client/android/d/a;
.super Lcom/google/zxing/client/android/d/j;
.source "AddressBookResultHandler.java"


# static fields
.field private static final c:[Ljava/text/DateFormat;

.field private static final d:[I


# instance fields
.field private final e:[Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-array v2, v5, [Ljava/text/DateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v0, v2, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd\'T\'HHmmss"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v0, v2, v6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v0, v2, v7

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v0, v2, v8

    sput-object v2, Lcom/google/zxing/client/android/d/a;->c:[Ljava/text/DateFormat;

    move v0, v1

    :goto_36
    if-ge v0, v5, :cond_40

    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->setLenient(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_40
    new-array v0, v5, [I

    sget v2, Lcom/google/zxing/client/android/y;->button_add_contact:I

    aput v2, v0, v1

    sget v1, Lcom/google/zxing/client/android/y;->button_show_map:I

    aput v1, v0, v6

    sget v1, Lcom/google/zxing/client/android/y;->button_dial:I

    aput v1, v0, v7

    sget v1, Lcom/google/zxing/client/android/y;->button_email:I

    aput v1, v0, v8

    sput-object v0, Lcom/google/zxing/client/android/d/a;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
    .registers 10

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    check-cast p2, Lcom/google/zxing/client/a/d;

    iget-object v0, p2, Lcom/google/zxing/client/a/d;->i:[Ljava/lang/String;

    if-eqz v0, :cond_51

    array-length v3, v0

    if-lez v3, :cond_51

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_51

    move v0, v1

    :goto_18
    iget-object v3, p2, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    if-eqz v3, :cond_53

    array-length v3, v3

    if-lez v3, :cond_53

    move v3, v1

    :goto_20
    iget-object v4, p2, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    if-eqz v4, :cond_55

    array-length v4, v4

    if-lez v4, :cond_55

    move v4, v1

    :goto_28
    new-array v5, v6, [Z

    iput-object v5, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    iget-object v5, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    aput-boolean v1, v5, v2

    iget-object v5, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    aput-boolean v0, v5, v1

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    const/4 v1, 0x3

    aput-boolean v4, v0, v1

    iput v2, p0, Lcom/google/zxing/client/android/d/a;->f:I

    :goto_40
    if-ge v2, v6, :cond_57

    iget-object v0, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_4e

    iget v0, p0, Lcom/google/zxing/client/android/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/zxing/client/android/d/a;->f:I

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_51
    move v0, v2

    goto :goto_18

    :cond_53
    move v3, v2

    goto :goto_20

    :cond_55
    move v4, v2

    goto :goto_28

    :cond_57
    return-void
.end method

.method private c(I)I
    .registers 6

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/zxing/client/android/d/a;->f:I

    if-ge p1, v0, :cond_18

    const/4 v0, 0x0

    move v2, v1

    :goto_7
    const/4 v3, 0x4

    if-ge v0, v3, :cond_18

    iget-object v3, p0, Lcom/google/zxing/client/android/d/a;->e:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_12

    add-int/lit8 v2, v2, 0x1

    :cond_12
    if-ne v2, p1, :cond_15

    :goto_14
    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    move v0, v1

    goto :goto_14
.end method

.method private static i(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    sget-object v1, Lcom/google/zxing/client/android/d/a;->c:[Ljava/text/DateFormat;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    :try_start_8
    invoke-virtual {v3, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/zxing/client/android/d/a;->f:I

    return v0
.end method

.method public final a(I)I
    .registers 4

    sget-object v0, Lcom/google/zxing/client/android/d/a;->d:[I

    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/d/a;->c(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->a:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    const-string v5, "\n("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    iget-object v1, v0, Lcom/google/zxing/client/a/d;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->i:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v5, v0, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    if-eqz v5, :cond_4f

    array-length v6, v5

    move v1, v2

    :goto_41
    if-ge v1, v6, :cond_4f

    aget-object v7, v5, v1

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_4f
    iget-object v1, v0, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->l:Ljava/lang/String;

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7d

    invoke-static {v1}, Lcom/google/zxing/client/android/d/a;->i(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_7d

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_7d
    iget-object v0, v0, Lcom/google/zxing/client/a/d;->h:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    if-lez v4, :cond_97

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v1, v2, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_96
    return-object v0

    :cond_97
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_96
.end method

.method public final b(I)V
    .registers 17

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/d;

    iget-object v1, v0, Lcom/google/zxing/client/a/d;->i:[Ljava/lang/String;

    if-eqz v1, :cond_b

    array-length v2, v1

    if-gtz v2, :cond_1c

    :cond_b
    const/4 v9, 0x0

    :goto_c
    iget-object v1, v0, Lcom/google/zxing/client/a/d;->j:[Ljava/lang/String;

    if-eqz v1, :cond_13

    array-length v2, v1

    if-gtz v2, :cond_20

    :cond_13
    const/4 v10, 0x0

    :goto_14
    invoke-direct/range {p0 .. p1}, Lcom/google/zxing/client/android/d/a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    :goto_1b
    return-void

    :cond_1c
    const/4 v2, 0x0

    aget-object v9, v1, v2

    goto :goto_c

    :cond_20
    const/4 v2, 0x0

    aget-object v10, v1, v2

    goto :goto_14

    :pswitch_24
    iget-object v1, v0, Lcom/google/zxing/client/a/d;->a:[Ljava/lang/String;

    iget-object v2, v0, Lcom/google/zxing/client/a/d;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/zxing/client/a/d;->d:[Ljava/lang/String;

    iget-object v5, v0, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    iget-object v6, v0, Lcom/google/zxing/client/a/d;->f:[Ljava/lang/String;

    iget-object v7, v0, Lcom/google/zxing/client/a/d;->h:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/zxing/client/a/d;->g:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/zxing/client/a/d;->k:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/zxing/client/a/d;->m:Ljava/lang/String;

    iget-object v13, v0, Lcom/google/zxing/client/a/d;->n:Ljava/lang/String;

    iget-object v14, v0, Lcom/google/zxing/client/a/d;->l:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v14}, Lcom/google/zxing/client/android/d/a;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_41
    iget-object v0, v0, Lcom/google/zxing/client/a/d;->a:[Ljava/lang/String;

    if-eqz v0, :cond_8f

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_48
    if-eqz v0, :cond_6d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "geo:0,0?q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_8f
    const/4 v0, 0x0

    goto :goto_48

    :pswitch_91
    iget-object v0, v0, Lcom/google/zxing/client/a/d;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    goto/16 :goto_1b

    :pswitch_b5
    iget-object v0, v0, Lcom/google/zxing/client/a/d;->e:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mailto:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/zxing/client/android/d/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1b

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_41
        :pswitch_91
        :pswitch_b5
    .end packed-switch
.end method
