.class public final Lcom/google/android/gms/internal/at;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/ar;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
.registers 7
invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v0, :cond_10
:try_start_8
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
invoke-static {p0, v1}, Lcom/google/android/gms/internal/cz;->a(Landroid/util/DisplayMetrics;I)I
:try_end_f
.catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_11
move-result p3
:goto_10
:cond_10
return p3
:catch_11
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Could not parse "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " in a video GMSG: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_10
.end method
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
.registers 12
const/4 v7, -0x1
const/4 v4, 0x0
const-string v0, "action"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_12
const-string v0, "Action missing from video GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
:goto_11
return-void
:cond_12
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->ba()Lcom/google/android/gms/internal/bo;
move-result-object v1
if-nez v1, :cond_1e
const-string v0, "Could not get ad overlay for a video GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto :goto_11
:cond_1e
const-string v2, "new"
invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
const-string v3, "position"
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v2, :cond_2e
if-eqz v3, :cond_62
:cond_2e
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const-string v3, "x"
invoke-static {v0, p2, v3, v4}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v3
const-string v5, "y"
invoke-static {v0, p2, v5, v4}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v4
const-string v5, "w"
invoke-static {v0, p2, v5, v7}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v5
const-string v6, "h"
invoke-static {v0, p2, v6, v7}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v0
if-eqz v2, :cond_5e
invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->ap()Lcom/google/android/gms/internal/bs;
move-result-object v2
if-nez v2, :cond_5e
invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/bo;->c(IIII)V
goto :goto_11
:cond_5e
invoke-virtual {v1, v3, v4, v5, v0}, Lcom/google/android/gms/internal/bo;->b(IIII)V
goto :goto_11
:cond_62
invoke-virtual {v1}, Lcom/google/android/gms/internal/bo;->ap()Lcom/google/android/gms/internal/bs;
move-result-object v8
if-nez v8, :cond_6f
const-string v0, "no_video_view"
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/bs;->a(Lcom/google/android/gms/internal/dd;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_11
:cond_6f
const-string v1, "click"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_a3
invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
const-string v1, "x"
invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v2
const-string v1, "y"
invoke-static {v0, p2, v1, v4}, Lcom/google/android/gms/internal/at;->a(Landroid/util/DisplayMetrics;Ljava/util/Map;Ljava/lang/String;I)I
move-result v3
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
int-to-float v5, v2
int-to-float v6, v3
move-wide v2, v0
move v7, v4
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v0
invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/bs;->b(Landroid/view/MotionEvent;)V
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
goto/16 :goto_11
:cond_a3
const-string v1, "controls"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c5
const-string v0, "enabled"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_bc
const-string v0, "Enabled parameter missing from controls video GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto/16 :goto_11
:cond_bc
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/bs;->i(Z)V
goto/16 :goto_11
:cond_c5
const-string v1, "currentTime"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_100
const-string v0, "time"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_de
const-string v0, "Time parameter missing from currentTime video GMSG."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto/16 :goto_11
:try_start_de
:cond_de
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
const/high16 v2, 0x447a
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/bs;->seekTo(I)V
:try_end_e9
.catch Ljava/lang/NumberFormatException; {:try_start_de .. :try_end_e9} :catch_eb
goto/16 :goto_11
:catch_eb
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Could not parse time parameter from currentTime video GMSG: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto/16 :goto_11
:cond_100
const-string v1, "hide"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10e
const/4 v0, 0x4
invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/bs;->setVisibility(I)V
goto/16 :goto_11
:cond_10e
const-string v1, "load"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11b
invoke-virtual {v8}, Lcom/google/android/gms/internal/bs;->ay()V
goto/16 :goto_11
:cond_11b
const-string v1, "pause"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_128
invoke-virtual {v8}, Lcom/google/android/gms/internal/bs;->pause()V
goto/16 :goto_11
:cond_128
const-string v1, "play"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_135
invoke-virtual {v8}, Lcom/google/android/gms/internal/bs;->play()V
goto/16 :goto_11
:cond_135
const-string v1, "show"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_142
invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/bs;->setVisibility(I)V
goto/16 :goto_11
:cond_142
const-string v1, "src"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_157
const-string v0, "src"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/bs;->o(Ljava/lang/String;)V
goto/16 :goto_11
:cond_157
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown video action: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
goto/16 :goto_11
.end method