.class public final Lcom/google/android/gms/internal/cf;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.field public static final CREATOR:Lcom/google/android/gms/internal/cg;
.field public final errorCode:I
.field public final mt:Ljava/util/List;
.field public final mu:Ljava/util/List;
.field public final mx:J
.field public final nw:Ljava/lang/String;
.field public final oi:Ljava/lang/String;
.field public final oj:J
.field public final ok:Z
.field public final ol:J
.field public final om:Ljava/util/List;
.field public final on:Ljava/lang/String;
.field public final oo:J
.field public final orientation:I
.field public final versionCode:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/internal/cg;
invoke-direct {v0}, Lcom/google/android/gms/internal/cg;-><init>()V
sput-object v0, Lcom/google/android/gms/internal/cf;->CREATOR:Lcom/google/android/gms/internal/cg;
return-void
.end method
.method public constructor <init>(I)V
.registers 21
const/4 v1, 0x3
const/4 v2, 0x0
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v6, 0x0
const-wide/16 v7, -0x1
const/4 v9, 0x0
const-wide/16 v10, -0x1
const/4 v12, 0x0
const-wide/16 v13, -0x1
const/4 v15, -0x1
const/16 v16, 0x0
const-wide/16 v17, -0x1
move-object/from16 v0, p0
move/from16 v5, p1
invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/cf;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V
return-void
.end method
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V
.registers 22
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/internal/cf;->versionCode:I
iput-object p2, p0, Lcom/google/android/gms/internal/cf;->nw:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/cf;->oi:Ljava/lang/String;
if-eqz p4, :cond_3a
invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
:goto_f
iput-object v2, p0, Lcom/google/android/gms/internal/cf;->mt:Ljava/util/List;
iput p5, p0, Lcom/google/android/gms/internal/cf;->errorCode:I
if-eqz p6, :cond_3c
invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
:goto_19
iput-object v2, p0, Lcom/google/android/gms/internal/cf;->mu:Ljava/util/List;
iput-wide p7, p0, Lcom/google/android/gms/internal/cf;->oj:J
iput-boolean p9, p0, Lcom/google/android/gms/internal/cf;->ok:Z
iput-wide p10, p0, Lcom/google/android/gms/internal/cf;->ol:J
if-eqz p12, :cond_3e
invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
:goto_27
iput-object v2, p0, Lcom/google/android/gms/internal/cf;->om:Ljava/util/List;
move-wide/from16 v0, p13
iput-wide v0, p0, Lcom/google/android/gms/internal/cf;->mx:J
move/from16 v0, p15
iput v0, p0, Lcom/google/android/gms/internal/cf;->orientation:I
move-object/from16 v0, p16
iput-object v0, p0, Lcom/google/android/gms/internal/cf;->on:Ljava/lang/String;
move-wide/from16 v0, p17
iput-wide v0, p0, Lcom/google/android/gms/internal/cf;->oo:J
return-void
:cond_3a
const/4 v2, 0x0
goto :goto_f
:cond_3c
const/4 v2, 0x0
goto :goto_19
:cond_3e
const/4 v2, 0x0
goto :goto_27
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V
.registers 36
const/4 v1, 0x3
const/4 v5, -0x2
move-object/from16 v0, p0
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v6, p4
move-wide/from16 v7, p5
move/from16 v9, p7
move-wide/from16 v10, p8
move-object/from16 v12, p10
move-wide/from16 v13, p11
move/from16 v15, p13
move-object/from16 v16, p14
move-wide/from16 v17, p15
invoke-direct/range {v0 .. v18}, Lcom/google/android/gms/internal/cf;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/List;JZJLjava/util/List;JILjava/lang/String;J)V
return-void
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cg;->a(Lcom/google/android/gms/internal/cf;Landroid/os/Parcel;I)V
return-void
.end method