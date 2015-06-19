.class public final Lcom/google/android/gms/internal/dy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ah;

.field public final b:Lcom/google/android/gms/internal/er;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:I

.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:Lorg/json/JSONObject;

.field public final k:Z

.field public final l:Lcom/google/android/gms/internal/aw;

.field public final m:Lcom/google/android/gms/internal/bi;

.field public final n:Ljava/lang/String;

.field public final o:Lcom/google/android/gms/internal/ax;

.field public final p:Lcom/google/android/gms/internal/az;

.field public final q:J

.field public final r:Lcom/google/android/gms/internal/ak;

.field public final s:J

.field public final t:J

.field public final u:J

.field public final v:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/internal/er;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/aw;Lcom/google/android/gms/internal/bi;Ljava/lang/String;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/az;JLcom/google/android/gms/internal/ak;JJJLjava/lang/String;Lorg/json/JSONObject;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ah;",
            "Lcom/google/android/gms/internal/er;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/aw;",
            "Lcom/google/android/gms/internal/bi;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ax;",
            "Lcom/google/android/gms/internal/az;",
            "J",
            "Lcom/google/android/gms/internal/ak;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dy;->a:Lcom/google/android/gms/internal/ah;

    iput-object p2, p0, Lcom/google/android/gms/internal/dy;->b:Lcom/google/android/gms/internal/er;

    if-eqz p3, :cond_58

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_d
    iput-object v2, p0, Lcom/google/android/gms/internal/dy;->c:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/dy;->d:I

    if-eqz p5, :cond_5a

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_17
    iput-object v2, p0, Lcom/google/android/gms/internal/dy;->e:Ljava/util/List;

    if-eqz p6, :cond_5c

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1f
    iput-object v2, p0, Lcom/google/android/gms/internal/dy;->f:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/dy;->g:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/dy;->h:J

    iput-object p10, p0, Lcom/google/android/gms/internal/dy;->i:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/dy;->k:Z

    iput-object p12, p0, Lcom/google/android/gms/internal/dy;->l:Lcom/google/android/gms/internal/aw;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->m:Lcom/google/android/gms/internal/bi;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->n:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->o:Lcom/google/android/gms/internal/ax;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->p:Lcom/google/android/gms/internal/az;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/dy;->q:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->r:Lcom/google/android/gms/internal/ak;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/dy;->s:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/dy;->t:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/dy;->u:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->v:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/dy;->j:Lorg/json/JSONObject;

    return-void

    :cond_58
    const/4 v2, 0x0

    goto :goto_d

    :cond_5a
    const/4 v2, 0x0

    goto :goto_17

    :cond_5c
    const/4 v2, 0x0

    goto :goto_1f
.end method
