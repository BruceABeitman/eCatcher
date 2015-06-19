.class final Lcom/spotify/mobile/android/service/flow/login/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/spotify/mobile/android/service/flow/login/ab;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/flow/login/ab;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static e(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/aa;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->a()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->b()V

    goto :goto_b
.end method

.method public final a(Ljava/util/Calendar;)V
    .registers 8

    const/4 v5, 0x1

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x70

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_33

    sget-object v0, Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;->b:Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;

    :goto_22
    sget-object v1, Lcom/spotify/mobile/android/service/flow/login/aa$1;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_60

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->f()V

    :goto_32
    return-void

    :cond_33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xd

    const/16 v4, 0xb

    const/16 v5, 0x1f

    invoke-direct {v3, v2, v4, v5}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_51

    sget-object v0, Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;->c:Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;

    goto :goto_22

    :cond_51
    sget-object v0, Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;->a:Lcom/spotify/mobile/android/util/SignupUtil$AgeVerification;

    goto :goto_22

    :pswitch_54
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->h()V

    goto :goto_32

    :pswitch_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->g()V

    goto :goto_32

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_54
        :pswitch_5a
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/aa;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->c()V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->d()V

    goto :goto_b
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->e()V

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_7

    :cond_11
    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/aa;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->c()V

    goto :goto_e

    :cond_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/aa;->a:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ab;->d()V

    goto :goto_e
.end method
