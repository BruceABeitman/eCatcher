.class public Lcom/google/android/gms/internal/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/cf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/cf;Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/cf;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->nw:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->oi:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->mt:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/cf;->errorCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->mu:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/android/gms/internal/cf;->oj:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/cf;->ok:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/cf;->ol:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->om:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/google/android/gms/internal/cf;->mx:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/gms/internal/cf;->orientation:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/cf;->on:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-wide v2, p0, Lcom/google/android/gms/internal/cf;->oo:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->D(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cf;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/os/Parcel;)Lcom/google/android/gms/internal/cf;
    .registers 25

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v21

    move/from16 v0, v21

    if-ge v0, v2, :cond_b4

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Lcom/google/android/gms/common/internal/safeparcel/a;->S(I)I

    move-result v22

    packed-switch v22, :pswitch_data_da

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_18

    :pswitch_33
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v3

    goto :goto_18

    :pswitch_3c
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :pswitch_45
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    :pswitch_4e
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_18

    :pswitch_57
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v7

    goto :goto_18

    :pswitch_60
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_18

    :pswitch_69
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v9

    goto :goto_18

    :pswitch_72
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v11

    goto :goto_18

    :pswitch_7b
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v12

    goto :goto_18

    :pswitch_84
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->y(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v14

    goto :goto_18

    :pswitch_8d
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v15

    goto :goto_18

    :pswitch_96
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v17

    goto/16 :goto_18

    :pswitch_a0
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_18

    :pswitch_aa
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->h(Landroid/os/Parcel;I)J

    move-result-wide v19

    goto/16 :goto_18

    :cond_b4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v2, :cond_d3

    new-instance v3, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Overread allowed size end="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v3

    :cond_d3
    new-instance v2, Lcom/google/android/gms/internal/cf;

    invoke-direct/range {v2 .. v20}, Lcom/google/android/gms/internal/cf;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V

    return-object v2

    nop

    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_33
        :pswitch_3c
        :pswitch_45
        :pswitch_4e
        :pswitch_57
        :pswitch_60
        :pswitch_69
        :pswitch_72
        :pswitch_7b
        :pswitch_84
        :pswitch_8d
        :pswitch_96
        :pswitch_a0
        :pswitch_aa
    .end packed-switch
.end method

.method public l(I)[Lcom/google/android/gms/internal/cf;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/cf;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cg;->l(I)[Lcom/google/android/gms/internal/cf;

    move-result-object v0

    return-object v0
.end method
