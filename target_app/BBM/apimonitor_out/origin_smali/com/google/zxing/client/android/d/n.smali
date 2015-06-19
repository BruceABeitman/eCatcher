.class public final Lcom/google/zxing/client/android/d/n;
.super Lcom/google/zxing/client/android/d/j;
.source "SMSResultHandler.java"


# static fields
.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/google/zxing/client/android/y;->button_sms:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/google/zxing/client/android/y;->button_mms:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/zxing/client/android/d/n;->c:[I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    sget-object v0, Lcom/google/zxing/client/android/d/n;->c:[I

    array-length v0, v0

    return v0
.end method

.method public final a(I)I
    .registers 3

    sget-object v0, Lcom/google/zxing/client/android/d/n;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/w;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, v0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;

    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_11
    array-length v5, v3

    if-ge v1, v5, :cond_1f

    aget-object v5, v3, v1

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1f
    invoke-static {v4, v2}, Lcom/google/zxing/client/a/q;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, v0, Lcom/google/zxing/client/a/w;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, v0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/w;

    packed-switch p1, :pswitch_data_6e

    :goto_8
    return-void

    :pswitch_9
    iget-object v1, v0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v0, v0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsto:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/client/android/d/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_22
    iget-object v1, v0, Lcom/google/zxing/client/a/w;->a:[Ljava/lang/String;

    aget-object v1, v1, v2

    iget-object v2, v0, Lcom/google/zxing/client/a/w;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/zxing/client/a/w;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mmsto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_4c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_68

    :cond_4c
    const-string v1, "subject"

    iget-object v2, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;

    sget v4, Lcom/google/zxing/client/android/y;->msg_default_mms_subject:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/google/zxing/client/android/d/j;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    const-string v1, "sms_body"

    invoke-static {v3, v1, v0}, Lcom/google/zxing/client/android/d/j;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "compose_mode"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/d/j;->b(Landroid/content/Intent;)V

    goto :goto_8

    :cond_68
    const-string v1, "subject"

    invoke-static {v3, v1, v2}, Lcom/google/zxing/client/android/d/j;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_22
    .end packed-switch
.end method
