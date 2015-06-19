.class public Lcom/google/android/gms/internal/gg;
.super Lcom/google/android/gms/internal/ga;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/hz;


# instance fields
.field private final a:I

.field private final b:Landroid/os/Parcel;

.field private final c:I

.field private final d:Lcom/google/android/gms/internal/gd;

.field private final e:Ljava/lang/String;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/hz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/hz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gg;->CREATOR:Lcom/google/android/gms/internal/hz;

    return-void
.end method

.method constructor <init>(ILandroid/os/Parcel;Lcom/google/android/gms/internal/gd;)V
    .registers 6

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ga;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gg;->a:I

    invoke-static {p2}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcel;

    iput-object v0, p0, Lcom/google/android/gms/internal/gg;->b:Landroid/os/Parcel;

    iput v1, p0, Lcom/google/android/gms/internal/gg;->c:I

    iput-object p3, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gg;->e:Ljava/lang/String;

    :goto_19
    iput v1, p0, Lcom/google/android/gms/internal/gg;->f:I

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gg;->e:Ljava/lang/String;

    goto :goto_19
.end method

.method private static a(Landroid/os/Bundle;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_21
    return-object v1
.end method

.method private static a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V
    .registers 6

    packed-switch p1, :pswitch_data_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_18
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1b
    return-void

    :pswitch_1c
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :pswitch_34
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/internal/ib;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :pswitch_4a
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p2, [B

    invoke-static {p2}, Lcom/google/android/gms/internal/ib;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :pswitch_5f
    check-cast p2, Ljava/util/HashMap;

    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ii;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto :goto_1b

    :pswitch_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1c
        :pswitch_34
        :pswitch_4a
        :pswitch_5f
        :pswitch_65
    .end packed-switch
.end method

.method private a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Landroid/os/Parcel;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/ga$a",
            "<**>;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ga$a;->e()Z

    move-result v1

    if-eqz v1, :cond_f9

    const-string v1, "["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ga$a;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_1fe

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown field type out."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->r(Landroid/os/Parcel;I)[I

    move-result-object v0

    array-length v1, v0

    :goto_21
    if-ge v2, v1, :cond_43

    if-eqz v2, :cond_2a

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :pswitch_36
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    if-nez v1, :cond_49

    :goto_40
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    :cond_43
    :goto_43
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_48
    return-void

    :cond_49
    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-array v0, v4, [Ljava/math/BigInteger;

    :goto_4f
    if-ge v2, v4, :cond_5f

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_5f
    add-int/2addr v1, v3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_40

    :pswitch_64
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_72

    :goto_6e
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[J)V

    goto :goto_43

    :cond_72
    invoke-virtual {p3}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_6e

    :pswitch_7b
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_89

    :goto_85
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[F)V

    goto :goto_43

    :cond_89
    invoke-virtual {p3}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_85

    :pswitch_92
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_a0

    :goto_9c
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[D)V

    goto :goto_43

    :cond_a0
    invoke-virtual {p3}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_9c

    :pswitch_a9
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->s(Landroid/os/Parcel;I)[Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    goto :goto_43

    :pswitch_b1
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    if-nez v1, :cond_bf

    :goto_bb
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[Z)V

    goto :goto_43

    :cond_bf
    invoke-virtual {p3}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_bb

    :pswitch_c8
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->t(Landroid/os/Parcel;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ia;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    goto/16 :goto_43

    :pswitch_d1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d9
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->w(Landroid/os/Parcel;I)[Landroid/os/Parcel;

    move-result-object v1

    array-length v3, v1

    move v0, v2

    :goto_df
    if-ge v0, v3, :cond_43

    if-lez v0, :cond_e8

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e8
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ga$a;->l()Ljava/util/HashMap;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_df

    :cond_f9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ga$a;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_21a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown field type out"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_108
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_111
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_11a
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_123
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_12c
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_135
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_13e
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_147
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_160
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_179
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/ib;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_191
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1a7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_1ba

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ba
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_1a7

    :cond_1e7
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_48

    :pswitch_1ee
    invoke-static {p3, p4}, Lcom/google/android/gms/common/internal/safeparcel/a;->v(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ga$a;->l()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    goto/16 :goto_48

    :pswitch_data_1fe
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_36
        :pswitch_64
        :pswitch_7b
        :pswitch_92
        :pswitch_a9
        :pswitch_b1
        :pswitch_c8
        :pswitch_d1
        :pswitch_d1
        :pswitch_d1
        :pswitch_d9
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x0
        :pswitch_108
        :pswitch_111
        :pswitch_11a
        :pswitch_123
        :pswitch_12c
        :pswitch_135
        :pswitch_13e
        :pswitch_147
        :pswitch_160
        :pswitch_179
        :pswitch_191
        :pswitch_1ee
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/google/android/gms/internal/ga$a",
            "<**>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2f

    check-cast p2, Ljava/util/ArrayList;

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-ge v0, v1, :cond_29

    if-eqz v0, :cond_1b

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->b()I

    move-result v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_29
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    return-void

    :cond_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ga$a;->b()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;ILjava/lang/Object;)V

    goto :goto_2e
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ga$a",
            "<**>;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ga$a;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ga$a;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_2b
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :cond_36
    :goto_36
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v3, :cond_138

    invoke-virtual {p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const v0, 0xffff

    and-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_36

    if-eqz v1, :cond_57

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_57
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ga$a;

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga$a;->j()Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga$a;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_15a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown field out type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga$a;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_98
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    :goto_a7
    const/4 v0, 0x1

    move v1, v0

    goto :goto_36

    :pswitch_aa
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->j(Landroid/os/Parcel;I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_b6
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_c6
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->k(Landroid/os/Parcel;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_d6
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_e6
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_f2
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_102
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_10e
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto :goto_a7

    :pswitch_11a
    invoke-static {p3, v4}, Lcom/google/android/gms/common/internal/safeparcel/a;->p(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gg;->a(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gg;->a(Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Ljava/lang/Object;)V

    goto/16 :goto_a7

    :pswitch_12b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Method does not accept concrete type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_133
    invoke-direct {p0, p1, v0, p3, v4}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Lcom/google/android/gms/internal/ga$a;Landroid/os/Parcel;I)V

    goto/16 :goto_a7

    :cond_138
    invoke-virtual {p3}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-eq v0, v3, :cond_153

    new-instance v0, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overread allowed size end="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v0

    :cond_153
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_98
        :pswitch_aa
        :pswitch_b6
        :pswitch_c6
        :pswitch_d6
        :pswitch_e6
        :pswitch_f2
        :pswitch_102
        :pswitch_10e
        :pswitch_10e
        :pswitch_11a
        :pswitch_12b
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gg;->a:I

    return v0
.end method

.method public final b()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ga$a",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    iget-object v1, p0, Lcom/google/android/gms/internal/gg;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_5
.end method

.method protected final c()Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final d()Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Converting to JSON does not require this method."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/gg;->CREATOR:Lcom/google/android/gms/internal/hz;

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Landroid/os/Parcel;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/gg;->f:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->b:Landroid/os/Parcel;

    return-object v0

    :pswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->b:Landroid/os/Parcel;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/gg;->g:I

    :pswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->b:Landroid/os/Parcel;

    iget v1, p0, Lcom/google/android/gms/internal/gg;->g:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gg;->f:I

    goto :goto_5

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method final f()Lcom/google/android/gms/internal/gd;
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/gg;->c:I

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid creation type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/gg;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const/4 v0, 0x0

    :goto_1d
    return-object v0

    :pswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    goto :goto_1d

    :pswitch_21
    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    goto :goto_1d

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    const-string v1, "Cannot convert to JSON on client side."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hh;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gg;->e()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gg;->d:Lcom/google/android/gms/internal/gd;

    iget-object v3, p0, Lcom/google/android/gms/internal/gg;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/gg;->a(Ljava/lang/StringBuilder;Ljava/util/HashMap;Landroid/os/Parcel;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/gg;->CREATOR:Lcom/google/android/gms/internal/hz;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/hz;->a(Lcom/google/android/gms/internal/gg;Landroid/os/Parcel;I)V

    return-void
.end method
