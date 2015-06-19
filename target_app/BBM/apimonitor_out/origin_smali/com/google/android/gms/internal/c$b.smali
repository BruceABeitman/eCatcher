.class public final Lcom/google/android/gms/internal/c$b;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/c$b;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile eR:[Lcom/google/android/gms/internal/c$b;


# instance fields
.field public eS:[I

.field public eT:I

.field public eU:Z

.field public eV:Z

.field public name:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$b;->e()Lcom/google/android/gms/internal/c$b;

    return-void
.end method

.method public static d()[Lcom/google/android/gms/internal/c$b;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/c$b;->eR:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/kc;->aah:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eR:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$b;

    sput-object v0, Lcom/google/android/gms/internal/c$b;->eR:[Lcom/google/android/gms/internal/c$b;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/c$b;->eR:[Lcom/google/android/gms/internal/c$b;

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/jz;)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(IZ)V

    :cond_a
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v0, v0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    :goto_1a
    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2a

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/jz;->f(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_2a
    iget v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v0, :cond_34

    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V

    :cond_34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    if-eqz v0, :cond_3e

    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(IZ)V

    :cond_3e
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$b;->c(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    return-object v0
.end method

.method public final c()I
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v0, v0

    if-lez v0, :cond_57

    move v0, v1

    :goto_23
    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    aget v3, v3, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/jz;->cC(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_34
    add-int v0, v2, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :goto_3c
    iget v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    if-eqz v1, :cond_48

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    iget-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    if-eqz v1, :cond_54

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_54
    iput v0, p0, Lcom/google/android/gms/internal/c$b;->DY:I

    return v0

    :cond_57
    move v0, v2

    goto :goto_3c
.end method

.method public final c(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$b;
    .registers 7

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v0

    sparse-switch v0, :sswitch_data_a2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$b;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    goto :goto_1

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    goto :goto_1

    :sswitch_1d
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    if-nez v0, :cond_43

    move v0, v1

    :goto_28
    add-int/2addr v2, v0

    new-array v2, v2, [I

    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_32
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_47

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v3

    aput v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_43
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v0, v0

    goto :goto_28

    :cond_47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v3

    aput v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    goto :goto_1

    :sswitch_50
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kE()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->cw(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->getPosition()I

    move-result v2

    move v0, v1

    :goto_5d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kJ()I

    move-result v4

    if-lez v4, :cond_69

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_69
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/jy;->cy(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    if-nez v2, :cond_87

    move v2, v1

    :goto_71
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_7b

    iget-object v4, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7b
    :goto_7b
    array-length v4, v0

    if-ge v2, v4, :cond_8b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v4

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_87
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    array-length v2, v2

    goto :goto_71

    :cond_8b
    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->cx(I)V

    goto/16 :goto_1

    :sswitch_92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->name:I

    goto/16 :goto_1

    :sswitch_9a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    goto/16 :goto_1

    :sswitch_data_a2
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1d
        0x1a -> :sswitch_50
        0x20 -> :sswitch_92
        0x30 -> :sswitch_9a
    .end sparse-switch
.end method

.method public final e()Lcom/google/android/gms/internal/c$b;
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    iput v1, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$b;->DY:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/c$b;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/c$b;

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/c$b;->eS:[I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_4

    :cond_19
    iget v2, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    iget v3, p1, Lcom/google/android/gms/internal/c$b;->eT:I

    if-eq v2, v3, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    iget v2, p0, Lcom/google/android/gms/internal/c$b;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/c$b;->name:I

    if-eq v2, v3, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eU:Z

    if-eq v2, v3, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$b;->eV:Z

    if-eq v2, v3, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_53

    :cond_45
    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_53
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->eS:[I

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->hashCode([I)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->eT:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/c$b;->name:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$b;->eU:Z

    if-eqz v0, :cond_36

    move v0, v1

    :goto_1d
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$b;->eV:Z

    if-eqz v3, :cond_38

    :goto_24
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3a

    :cond_33
    const/4 v0, 0x0

    :goto_34
    add-int/2addr v0, v1

    return v0

    :cond_36
    move v0, v2

    goto :goto_1d

    :cond_38
    move v1, v2

    goto :goto_24

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$b;->aae:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_34
.end method
