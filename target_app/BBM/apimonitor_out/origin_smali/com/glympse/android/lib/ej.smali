.class Lcom/glympse/android/lib/ej;
.super Ljava/lang/Object;
.source "Invite.java"

# interfaces
.implements Lcom/glympse/android/lib/GInvitePrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private _name:Ljava/lang/String;

.field private _type:I

.field private cb:I

.field private ew:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private ho:Ljava/lang/String;

.field private jv:Ljava/lang/String;

.field private kQ:Ljava/lang/String;

.field private kq:Ljava/lang/String;

.field private mi:Ljava/lang/String;

.field private mj:Lcom/glympse/android/api/GImage;

.field private nV:Z

.field private nW:Z

.field private nX:J

.field private nY:I

.field private nZ:I

.field private nh:J

.field private oa:Ljava/lang/String;

.field private ob:Lcom/glympse/android/api/GServerError;

.field private oc:Lcom/glympse/android/lib/GPerson;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/glympse/android/lib/ej;->_type:I

    iput-boolean v0, p0, Lcom/glympse/android/lib/ej;->nV:Z

    iput-boolean v0, p0, Lcom/glympse/android/lib/ej;->nW:Z

    iput v0, p0, Lcom/glympse/android/lib/ej;->cb:I

    iput-wide v1, p0, Lcom/glympse/android/lib/ej;->nX:J

    iput-wide v1, p0, Lcom/glympse/android/lib/ej;->nh:J

    iput v0, p0, Lcom/glympse/android/lib/ej;->nY:I

    iput v0, p0, Lcom/glympse/android/lib/ej;->nZ:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/glympse/android/lib/ej;->_type:I

    iput-object p2, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/glympse/android/lib/ej;->nV:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/ej;->nW:Z

    const/16 v0, 0x8

    if-ne v0, p1, :cond_2c

    invoke-static {p4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    :goto_23
    iput v1, p0, Lcom/glympse/android/lib/ej;->cb:I

    iput-wide v2, p0, Lcom/glympse/android/lib/ej;->nX:J

    iput-wide v2, p0, Lcom/glympse/android/lib/ej;->nh:J

    iput v1, p0, Lcom/glympse/android/lib/ej;->nY:I

    return-void

    :cond_2c
    iput-object p3, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    goto :goto_23
.end method

.method public static a(C)Z
    .registers 2

    const/16 v0, 0x21

    if-eq v0, p0, :cond_8

    const/16 v0, 0x23

    if-ne v0, p0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/glympse/android/lib/ej;->createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;

    move-result-object v0

    return-object v0
.end method

.method public static createInvite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    invoke-static {p3}, Lcom/glympse/android/lib/ej;->v(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_d

    move-object v0, v2

    :goto_c
    return-object v0

    :cond_d
    const/16 v3, 0xb

    if-ne v3, p0, :cond_19

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    move-object v0, v2

    goto :goto_c

    :cond_19
    const/4 v3, 0x7

    if-ne v3, p0, :cond_33

    invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "#"

    invoke-virtual {p3, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    :cond_2b
    invoke-static {p3, v1}, Lcom/glympse/android/lib/ej;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_33

    move-object v0, v2

    goto :goto_c

    :cond_33
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_3d
    new-instance v1, Lcom/glympse/android/lib/ej;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/glympse/android/lib/ej;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/glympse/android/api/GInvite;->setVisible(Z)V

    move-object v0, v1

    goto :goto_c
.end method

.method public static f(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object p0, v0

    :cond_8
    :goto_8
    return-object p0

    :cond_9
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_f
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object p0, v0

    goto :goto_8

    :cond_17
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/glympse/android/lib/ej;->a(C)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/glympse/android/hal/Helpers;->substr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :cond_27
    invoke-static {p0}, Lcom/glympse/android/lib/ej;->validateGroupName(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    move-object p0, v0

    goto :goto_8
.end method

.method public static l(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_10

    :pswitch_5
    move v0, v1

    :goto_6
    :pswitch_6
    return v0

    :pswitch_7
    move v0, v1

    goto :goto_6

    :pswitch_9
    move v0, v1

    goto :goto_6

    :pswitch_b
    move v0, v1

    goto :goto_6

    :pswitch_d
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_d
    .end packed-switch
.end method

.method public static m(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static n(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_58

    const-string v0, "unknown"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0

    :pswitch_a
    const-string v0, "sms"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_11
    const-string v0, "email"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_18
    const-string v0, "twitter"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_1f
    const-string v0, "facebook"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_26
    const-string v0, "link"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_2d
    const-string v0, "group"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_34
    const-string v0, "account"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_3b
    const-string v0, "clipboard"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_42
    const-string v0, "share"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_49
    const-string v0, "evernote"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_50
    const-string v0, "app"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_34
        :pswitch_11
        :pswitch_a
        :pswitch_18
        :pswitch_1f
        :pswitch_26
        :pswitch_2d
        :pswitch_42
        :pswitch_3b
        :pswitch_49
        :pswitch_50
    .end packed-switch
.end method

.method public static t(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v0, 0x3

    goto :goto_7

    :cond_16
    const-string v2, "email"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v0, 0x2

    goto :goto_7

    :cond_20
    const-string v2, "twitter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v0, 0x4

    goto :goto_7

    :cond_2a
    const-string v2, "facebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v0, 0x5

    goto :goto_7

    :cond_34
    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const/4 v0, 0x6

    goto :goto_7

    :cond_3e
    const-string v2, "account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v0, 0x1

    goto :goto_7

    :cond_48
    const-string v2, "group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    const/4 v0, 0x7

    goto :goto_7

    :cond_52
    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    const/16 v0, 0x9

    goto :goto_7

    :cond_5d
    const-string v2, "share"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    const/16 v0, 0x8

    goto :goto_7

    :cond_68
    const-string v2, "evernote"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    const/16 v0, 0xa

    goto :goto_7

    :cond_73
    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0xb

    goto :goto_7
.end method

.method public static u(Ljava/lang/String;)I
    .registers 2

    const-string v0, "sent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    :goto_9
    return v0

    :cond_a
    const-string v0, "sending"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const-string v0, "client"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x2

    goto :goto_9

    :cond_1e
    const-string v0, "failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v0, 0x8

    goto :goto_9

    :cond_29
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static v(Ljava/lang/String;)I
    .registers 10

    const/16 v8, 0x2e

    const/4 v3, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return v2

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast v0, [C

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    aget-char v6, v0, v2

    invoke-static {v6}, Lcom/glympse/android/lib/ej;->a(C)Z

    move-result v6

    if-eqz v6, :cond_2c

    if-lt v5, v1, :cond_b

    const/4 v2, 0x7

    goto :goto_b

    :cond_2c
    const/16 v6, 0x40

    invoke-virtual {v4, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-nez v6, :cond_36

    const/4 v2, 0x4

    goto :goto_b

    :cond_36
    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v6, :cond_46

    add-int/lit8 v6, v6, 0x1

    if-le v4, v6, :cond_46

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v5, :cond_46

    move v2, v1

    goto :goto_b

    :cond_46
    move v4, v2

    move v1, v2

    :goto_48
    if-ge v4, v5, :cond_b

    aget-char v6, v0, v4

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5a

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5a

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_6d

    move v2, v3

    goto :goto_b

    :cond_5a
    if-eq v8, v6, :cond_6d

    const/16 v7, 0x2d

    if-eq v7, v6, :cond_6d

    const/16 v7, 0x20

    if-eq v7, v6, :cond_6d

    const/16 v7, 0x28

    if-eq v7, v6, :cond_6d

    const/16 v7, 0x29

    if-eq v7, v6, :cond_6d

    move v1, v2

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_48
.end method

.method public static validateGroupName(Ljava/lang/String;)I
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return v1

    :cond_9
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->toCharArray(Ljava/lang/String;)[C

    move-result-object v3

    aget-char v0, v3, v2

    invoke-static {v0}, Lcom/glympse/android/lib/ej;->a(C)Z

    move-result v0

    if-eqz v0, :cond_42

    move v0, v1

    :goto_16
    array-length v4, v3

    move v7, v1

    move v1, v0

    move v0, v7

    :goto_1a
    if-ge v1, v4, :cond_3c

    aget-char v5, v3, v1

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_39

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_38

    const/16 v0, 0x5f

    if-eq v0, v5, :cond_38

    const/16 v0, 0x7b

    if-eq v0, v5, :cond_38

    const/16 v0, 0x7d

    if-eq v0, v5, :cond_38

    const/4 v1, 0x2

    goto :goto_8

    :cond_38
    move v0, v2

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3c
    if-eqz v0, :cond_40

    const/4 v1, 0x3

    goto :goto_8

    :cond_40
    move v1, v2

    goto :goto_8

    :cond_42
    move v0, v2

    goto :goto_16
.end method


# virtual methods
.method public applyBrand(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->kQ:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/ej;->setBrand(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public clone()Lcom/glympse/android/api/GInvite;
    .registers 6

    new-instance v0, Lcom/glympse/android/lib/ej;

    iget v1, p0, Lcom/glympse/android/lib/ej;->_type:I

    iget-object v2, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    iget-object v3, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/ej;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/glympse/android/lib/ej;->clone()Lcom/glympse/android/api/GInvite;

    move-result-object v0

    return-object v0
.end method

.method public completeClientSideSend(Z)Z
    .registers 4

    const/4 v0, 0x3

    iget v1, p0, Lcom/glympse/android/lib/ej;->cb:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x2

    iget v1, p0, Lcom/glympse/android/lib/ej;->cb:I

    if-ne v0, v1, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    if-eqz p1, :cond_2e

    const/4 v0, 0x4

    :goto_17
    iput v0, p0, Lcom/glympse/android/lib/ej;->cb:I

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v1

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GTicketProtocol;->updateInvite(Lcom/glympse/android/api/GInvite;)V

    :cond_2c
    const/4 v0, 0x1

    goto :goto_13

    :cond_2e
    const/16 v0, 0x8

    goto :goto_17
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/glympse/android/lib/ej;->_type:I

    const-string v0, "subtype"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    const-string v0, "addr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    const-string v0, "vis"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/ej;->nV:Z

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    const-string v0, "url"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->kq:Ljava/lang/String;

    const-string v0, "st"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/glympse/android/lib/ej;->cb:I

    const-string v0, "cts"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ej;->nX:J

    const-string v0, "text"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->oa:Ljava/lang/String;

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 6

    const-string v0, "type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/lib/ej;->_type:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "st"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/glympse/android/lib/ej;->cb:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "cts"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/glympse/android/lib/ej;->nX:J

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    const-string v0, "vis"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/glympse/android/lib/ej;->nV:Z

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "subtype"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "name"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    const-string v0, "addr"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    const-string v0, "code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->kq:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "url"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->kq:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    iget-object v0, p0, Lcom/glympse/android/lib/ej;->oa:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "text"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->oa:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatar()Lcom/glympse/android/api/GImage;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->mj:Lcom/glympse/android/api/GImage;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->kQ:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ej;->nX:J

    return-wide v0
.end method

.method public getError()Lcom/glympse/android/api/GServerError;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ob:Lcom/glympse/android/api/GServerError;

    return-object v0
.end method

.method public getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-object v0
.end method

.method public getLastViewTime()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/ej;->nh:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPerson()Lcom/glympse/android/lib/GPerson;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->oc:Lcom/glympse/android/lib/GPerson;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ej;->cb:I

    return v0
.end method

.method public getSubtype()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->oa:Ljava/lang/String;

    return-object v0
.end method

.method public getTicketId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->jv:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ej;->_type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/ej;->kq:Ljava/lang/String;

    return-object v0
.end method

.method public getViewers()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ej;->nY:I

    return v0
.end method

.method public getViewing()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/ej;->nZ:I

    return v0
.end method

.method public initiateClientSideSend()Z
    .registers 3

    const/4 v0, 0x3

    iget v1, p0, Lcom/glympse/android/lib/ej;->cb:I

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x2

    iput v0, p0, Lcom/glympse/android/lib/ej;->cb:I

    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isCreateOnly()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/ej;->nW:Z

    return v0
.end method

.method public isEqual(Lcom/glympse/android/core/GCommon;)Z
    .registers 5

    const/4 v0, 0x0

    check-cast p1, Lcom/glympse/android/lib/ej;

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/glympse/android/lib/ej;->_type:I

    iget v2, p1, Lcom/glympse/android/lib/ej;->_type:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    iget-object v2, p1, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    iget-object v2, p1, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/glympse/android/hal/Helpers;->safeEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/ej;->nV:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->ew:Ljava/lang/String;

    return-void
.end method

.method public setAvatar(Lcom/glympse/android/api/GImage;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->mj:Lcom/glympse/android/api/GImage;

    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->kQ:Ljava/lang/String;

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ej;->kQ:Ljava/lang/String;

    goto :goto_8
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->mi:Ljava/lang/String;

    return-void
.end method

.method public setCreateOnly(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/ej;->nW:Z

    return-void
.end method

.method public setCreatedTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/ej;->nX:J

    return-void
.end method

.method public setError(Lcom/glympse/android/api/GServerError;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->ob:Lcom/glympse/android/api/GServerError;

    return-void
.end method

.method public setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public setLastViewTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/ej;->nh:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->ex:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPerson(Lcom/glympse/android/lib/GPerson;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->oc:Lcom/glympse/android/lib/GPerson;

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/ej;->cb:I

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->ho:Ljava/lang/String;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->oa:Ljava/lang/String;

    return-void
.end method

.method public setTicketId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->jv:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/ej;->_type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/ej;->kq:Ljava/lang/String;

    return-void
.end method

.method public setViewers(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/ej;->nY:I

    return-void
.end method

.method public setViewing(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/ej;->nZ:I

    return-void
.end method

.method public setVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/ej;->nV:Z

    return-void
.end method
