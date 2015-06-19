.class public final Lcom/google/android/gms/internal/dj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/z;

.field public final b:Lcom/google/android/gms/internal/ec;

.field public final c:Ljava/util/List;

.field public final d:I

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Lcom/google/android/gms/internal/ah;

.field public final l:Lcom/google/android/gms/internal/av;

.field public final m:Ljava/lang/String;

.field public final n:Lcom/google/android/gms/internal/ai;

.field public final o:Lcom/google/android/gms/internal/al;

.field public final p:J

.field public final q:Lcom/google/android/gms/internal/ab;

.field public final r:J

.field public final s:J

.field public final t:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/z;Lcom/google/android/gms/internal/ec;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/av;Ljava/lang/String;Lcom/google/android/gms/internal/ai;Lcom/google/android/gms/internal/al;JLcom/google/android/gms/internal/ab;JJJ)V
    .registers 29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dj;->a:Lcom/google/android/gms/internal/z;

    iput-object p2, p0, Lcom/google/android/gms/internal/dj;->b:Lcom/google/android/gms/internal/ec;

    if-eqz p3, :cond_50

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_d
    iput-object v2, p0, Lcom/google/android/gms/internal/dj;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/dj;->d:I

    if-eqz p5, :cond_52

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_17
    iput-object v2, p0, Lcom/google/android/gms/internal/dj;->e:Ljava/util/List;

    if-eqz p6, :cond_54

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1f
    iput-object v2, p0, Lcom/google/android/gms/internal/dj;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/dj;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/dj;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/dj;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/dj;->j:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/dj;->k:Lcom/google/android/gms/internal/ah;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/dj;->l:Lcom/google/android/gms/internal/av;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/dj;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/dj;->n:Lcom/google/android/gms/internal/ai;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/dj;->o:Lcom/google/android/gms/internal/al;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/dj;->p:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/dj;->q:Lcom/google/android/gms/internal/ab;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/dj;->r:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/dj;->s:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/dj;->t:J

    return-void

    :cond_50
    const/4 v2, 0x0

    goto :goto_d

    :cond_52
    const/4 v2, 0x0

    goto :goto_17

    :cond_54
    const/4 v2, 0x0

    goto :goto_1f
.end method
