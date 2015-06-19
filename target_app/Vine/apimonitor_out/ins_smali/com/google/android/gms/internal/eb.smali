.class public final Lcom/google/android/gms/internal/eb;
.super Ljava/lang/Object;
.field private mOrientation:I
.field private qD:Ljava/lang/String;
.field private qE:Ljava/lang/String;
.field private qF:Ljava/lang/String;
.field private qG:Ljava/util/List;
.field private qH:Ljava/lang/String;
.field private qI:Ljava/lang/String;
.field private qJ:Ljava/util/List;
.field private qK:J
.field private qL:Z
.field private final qM:J
.field private qN:Ljava/util/List;
.field private qO:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/google/android/gms/internal/eb;->qK:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eb;->qL:Z
iput-wide v1, p0, Lcom/google/android/gms/internal/eb;->qM:J
iput-wide v1, p0, Lcom/google/android/gms/internal/eb;->qO:J
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/eb;->mOrientation:I
return-void
.end method
.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_16
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_16
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_15
return-object v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private static b(Ljava/util/Map;Ljava/lang/String;)J
.registers 5
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_3f
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_3f
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_15
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_18
.catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_18} :catch_1e
move-result v0
const/high16 v1, 0x447a
mul-float/2addr v0, v1
float-to-long v0, v0
:goto_1d
return-wide v0
:catch_1e
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Could not parse float from "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " header: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
:cond_3f
const-wide/16 v0, -0x1
goto :goto_1d
.end method
.method private static c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
.registers 4
invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_26
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_26
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_26
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, "\\s+"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
:goto_25
return-object v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method private e(Ljava/util/Map;)V
.registers 3
const-string v0, "X-Afma-Ad-Size"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qD:Ljava/lang/String;
return-void
.end method
.method private f(Ljava/util/Map;)V
.registers 3
const-string v0, "X-Afma-Click-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_a
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qG:Ljava/util/List;
:cond_a
return-void
.end method
.method private g(Ljava/util/Map;)V
.registers 4
const-string v0, "X-Afma-Debug-Dialog"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_19
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_19
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qH:Ljava/lang/String;
:cond_19
return-void
.end method
.method private h(Ljava/util/Map;)V
.registers 3
const-string v0, "X-Afma-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_a
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qJ:Ljava/util/List;
:cond_a
return-void
.end method
.method private i(Ljava/util/Map;)V
.registers 6
const-string v0, "X-Afma-Interstitial-Timeout"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->b(Ljava/util/Map;Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v2, v0, v2
if-eqz v2, :cond_e
iput-wide v0, p0, Lcom/google/android/gms/internal/eb;->qK:J
:cond_e
return-void
.end method
.method private j(Ljava/util/Map;)V
.registers 3
const-string v0, "X-Afma-ActiveView"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qI:Ljava/lang/String;
return-void
.end method
.method private k(Ljava/util/Map;)V
.registers 4
const-string v0, "X-Afma-Mediation"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_21
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_21
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eb;->qL:Z
:cond_21
return-void
.end method
.method private l(Ljava/util/Map;)V
.registers 3
const-string v0, "X-Afma-Manual-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_a
iput-object v0, p0, Lcom/google/android/gms/internal/eb;->qN:Ljava/util/List;
:cond_a
return-void
.end method
.method private m(Ljava/util/Map;)V
.registers 6
const-string v0, "X-Afma-Refresh-Rate"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/eb;->b(Ljava/util/Map;Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v2, v0, v2
if-eqz v2, :cond_e
iput-wide v0, p0, Lcom/google/android/gms/internal/eb;->qO:J
:cond_e
return-void
.end method
.method private n(Ljava/util/Map;)V
.registers 4
const-string v0, "X-Afma-Orientation"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_25
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_25
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "portrait"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_26
invoke-static {}, Lcom/google/android/gms/internal/ep;->bN()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/eb;->mOrientation:I
:goto_25
:cond_25
return-void
:cond_26
const-string v1, "landscape"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
invoke-static {}, Lcom/google/android/gms/internal/ep;->bM()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/eb;->mOrientation:I
goto :goto_25
.end method
.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/eb;->qE:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/eb;->qF:Ljava/lang/String;
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/eb;->d(Ljava/util/Map;)V
return-void
.end method
.method public d(Ljava/util/Map;)V
.registers 2
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->e(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->f(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->g(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->h(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->i(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->k(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->l(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->m(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->n(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/eb;->j(Ljava/util/Map;)V
return-void
.end method
.method public i(J)Lcom/google/android/gms/internal/dv;
.registers 23
new-instance v1, Lcom/google/android/gms/internal/dv;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/eb;->qE:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/eb;->qF:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/eb;->qG:Ljava/util/List;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/google/android/gms/internal/eb;->qJ:Ljava/util/List;
move-object/from16 v0, p0
iget-wide v6, v0, Lcom/google/android/gms/internal/eb;->qK:J
move-object/from16 v0, p0
iget-boolean v8, v0, Lcom/google/android/gms/internal/eb;->qL:Z
const-wide/16 v9, -0x1
move-object/from16 v0, p0
iget-object v11, v0, Lcom/google/android/gms/internal/eb;->qN:Ljava/util/List;
move-object/from16 v0, p0
iget-wide v12, v0, Lcom/google/android/gms/internal/eb;->qO:J
move-object/from16 v0, p0
iget v14, v0, Lcom/google/android/gms/internal/eb;->mOrientation:I
move-object/from16 v0, p0
iget-object v15, v0, Lcom/google/android/gms/internal/eb;->qD:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/eb;->qH:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/eb;->qI:Ljava/lang/String;
move-object/from16 v19, v0
move-wide/from16 v16, p1
invoke-direct/range {v1 .. v19}, Lcom/google/android/gms/internal/dv;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
return-object v1
.end method