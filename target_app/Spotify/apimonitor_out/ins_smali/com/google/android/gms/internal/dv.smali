.class public final Lcom/google/android/gms/internal/dv;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/util/List;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/util/List;
.field private h:J
.field private i:Z
.field private final j:J
.field private k:Ljava/util/List;
.field private l:J
.field private m:I
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lcom/google/android/gms/internal/dv;->h:J
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/dv;->i:Z
iput-wide v1, p0, Lcom/google/android/gms/internal/dv;->j:J
iput-wide v1, p0, Lcom/google/android/gms/internal/dv;->l:J
const/4 v0, -0x1
iput v0, p0, Lcom/google/android/gms/internal/dv;->m:I
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
if-eqz v0, :cond_3b
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_3b
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
const-string v2, "Could not parse float from "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " header: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
:cond_3b
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
.method public final a(J)Lcom/google/android/gms/internal/cz;
.registers 21
new-instance v1, Lcom/google/android/gms/internal/cz;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/android/gms/internal/dv;->b:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/google/android/gms/internal/dv;->c:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/android/gms/internal/dv;->d:Ljava/util/List;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/google/android/gms/internal/dv;->g:Ljava/util/List;
move-object/from16 v0, p0
iget-wide v6, v0, Lcom/google/android/gms/internal/dv;->h:J
move-object/from16 v0, p0
iget-boolean v8, v0, Lcom/google/android/gms/internal/dv;->i:Z
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/android/gms/internal/dv;->k:Ljava/util/List;
move-object/from16 v0, p0
iget-wide v10, v0, Lcom/google/android/gms/internal/dv;->l:J
move-object/from16 v0, p0
iget v12, v0, Lcom/google/android/gms/internal/dv;->m:I
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/android/gms/internal/dv;->a:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->e:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/android/gms/internal/dv;->f:Ljava/lang/String;
move-object/from16 v17, v0
move-wide/from16 v14, p1
invoke-direct/range {v1 .. v17}, Lcom/google/android/gms/internal/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
return-object v1
.end method
.method public final a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/dv;->b:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/internal/dv;->c:Ljava/lang/String;
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/dv;->a(Ljava/util/Map;)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 8
const-wide/16 v4, -0x1
const/4 v3, 0x0
const-string v0, "X-Afma-Ad-Size"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->a:Ljava/lang/String;
const-string v0, "X-Afma-Click-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_15
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->d:Ljava/util/List;
:cond_15
const-string v0, "X-Afma-Debug-Dialog"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_2d
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_2d
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->e:Ljava/lang/String;
:cond_2d
const-string v0, "X-Afma-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_37
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->g:Ljava/util/List;
:cond_37
const-string v0, "X-Afma-Interstitial-Timeout"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->b(Ljava/util/Map;Ljava/lang/String;)J
move-result-wide v0
cmp-long v2, v0, v4
if-eqz v2, :cond_43
iput-wide v0, p0, Lcom/google/android/gms/internal/dv;->h:J
:cond_43
const-string v0, "X-Afma-Mediation"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_63
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_63
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/google/android/gms/internal/dv;->i:Z
:cond_63
const-string v0, "X-Afma-Manual-Tracking-Urls"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->c(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_6d
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->k:Ljava/util/List;
:cond_6d
const-string v0, "X-Afma-Refresh-Rate"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->b(Ljava/util/Map;Ljava/lang/String;)J
move-result-wide v0
cmp-long v2, v0, v4
if-eqz v2, :cond_79
iput-wide v0, p0, Lcom/google/android/gms/internal/dv;->l:J
:cond_79
const-string v0, "X-Afma-Orientation"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_9d
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-nez v1, :cond_9d
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "portrait"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a6
invoke-static {}, Lcom/google/android/gms/internal/ej;->c()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/dv;->m:I
:goto_9d
:cond_9d
const-string v0, "X-Afma-ActiveView"
invoke-static {p1, v0}, Lcom/google/android/gms/internal/dv;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/dv;->f:Ljava/lang/String;
return-void
:cond_a6
const-string v1, "landscape"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9d
invoke-static {}, Lcom/google/android/gms/internal/ej;->b()I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/dv;->m:I
goto :goto_9d
.end method