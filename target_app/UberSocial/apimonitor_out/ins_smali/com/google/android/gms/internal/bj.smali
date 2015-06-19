.class public Lcom/google/android/gms/internal/bj;
.super Ljava/lang/Object;
.implements Landroid/os/Parcelable$Creator;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a(Lcom/google/android/gms/internal/bq;Landroid/os/Parcel;I)V
.registers 7
const/4 v3, 0x0
invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;)I
move-result v0
const/4 v1, 0x1
iget v2, p0, Lcom/google/android/gms/internal/bq;->a:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/4 v1, 0x2
iget-object v2, p0, Lcom/google/android/gms/internal/bq;->b:Lcom/google/android/gms/internal/bn;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
const/4 v1, 0x3
invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->a()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
const/4 v1, 0x4
invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->b()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
const/4 v1, 0x5
invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->c()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
const/4 v1, 0x6
invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->d()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
const/4 v1, 0x7
iget-object v2, p0, Lcom/google/android/gms/internal/bq;->g:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0x8
iget-boolean v2, p0, Lcom/google/android/gms/internal/bq;->h:Z
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;IZ)V
const/16 v1, 0x9
iget-object v2, p0, Lcom/google/android/gms/internal/bq;->i:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xa
invoke-virtual {p0}, Lcom/google/android/gms/internal/bq;->e()Landroid/os/IBinder;
move-result-object v2
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V
const/16 v1, 0xb
iget v2, p0, Lcom/google/android/gms/internal/bq;->k:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xc
iget v2, p0, Lcom/google/android/gms/internal/bq;->l:I
invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;II)V
const/16 v1, 0xd
iget-object v2, p0, Lcom/google/android/gms/internal/bq;->m:Ljava/lang/String;
invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V
const/16 v1, 0xe
iget-object v2, p0, Lcom/google/android/gms/internal/bq;->n:Lcom/google/android/gms/internal/db;
invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V
invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/c;->a(Landroid/os/Parcel;I)V
return-void
.end method
.method public a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/bq;
.registers 20
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;)I
move-result v16
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
const/4 v15, 0x0
:goto_12
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-ge v1, v0, :cond_98
invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;)I
move-result v1
invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(I)I
move-result v17
packed-switch v17, :pswitch_data_c4
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V
goto :goto_12
:pswitch_2b
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v2
goto :goto_12
:pswitch_32
sget-object v3, Lcom/google/android/gms/internal/bn;->CREATOR:Lcom/google/android/gms/internal/bf;
move-object/from16 v0, p1
invoke-static {v0, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/bn;
move-object v3, v1
goto :goto_12
:pswitch_3e
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v4
goto :goto_12
:pswitch_45
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v5
goto :goto_12
:pswitch_4c
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v6
goto :goto_12
:pswitch_53
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v7
goto :goto_12
:pswitch_5a
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v8
goto :goto_12
:pswitch_61
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z
move-result v9
goto :goto_12
:pswitch_68
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v10
goto :goto_12
:pswitch_6f
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->n(Landroid/os/Parcel;I)Landroid/os/IBinder;
move-result-object v11
goto :goto_12
:pswitch_76
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v12
goto :goto_12
:pswitch_7d
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I
move-result v13
goto :goto_12
:pswitch_84
move-object/from16 v0, p1
invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)Ljava/lang/String;
move-result-object v14
goto :goto_12
:pswitch_8b
sget-object v15, Lcom/google/android/gms/internal/db;->CREATOR:Lcom/google/android/gms/internal/eb;
move-object/from16 v0, p1
invoke-static {v0, v1, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Lcom/google/android/gms/internal/db;
move-object v15, v1
goto/16 :goto_12
:cond_98
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I
move-result v1
move/from16 v0, v16
if-eq v1, v0, :cond_bd
new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/b;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overread allowed size end="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
move/from16 v0, v16
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p1
invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V
throw v1
:cond_bd
new-instance v1, Lcom/google/android/gms/internal/bq;
invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/bq;-><init>(ILcom/google/android/gms/internal/bn;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/db;)V
return-object v1
nop
:pswitch_data_c4
.packed-switch 0x1
:pswitch_2b
:pswitch_32
:pswitch_3e
:pswitch_45
:pswitch_4c
:pswitch_53
:pswitch_5a
:pswitch_61
:pswitch_68
:pswitch_6f
:pswitch_76
:pswitch_7d
:pswitch_84
:pswitch_8b
.end packed-switch
.end method
.method public a(I)[Lcom/google/android/gms/internal/bq;
.registers 3
new-array v0, p1, [Lcom/google/android/gms/internal/bq;
return-object v0
.end method
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bj;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/bq;
move-result-object v0
return-object v0
.end method
.method public synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bj;->a(I)[Lcom/google/android/gms/internal/bq;
move-result-object v0
return-object v0
.end method