.class  Lcom/millennialmedia/android/t;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.field static final a:Ljava/lang/String; = "resize"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
return-void
.end method
.method  a(Landroid/content/Context;)I
.registers 3
invoke-static {p1}, Lcom/millennialmedia/android/co;->q(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
const-string v1, "resize"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/t;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_d
return-object v0
.end method
.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 13
const/4 v5, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/t;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
move-object v10, v0
check-cast v10, Lcom/millennialmedia/android/cq;
if-eqz v10, :cond_9d
invoke-virtual {v10}, Lcom/millennialmedia/android/cq;->z()Z
move-result v0
if-eqz v0, :cond_19
const-string v0, "State is currently resized"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_18
return-object v0
:cond_19
const-string v0, "width"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "height"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_a4
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
float-to-int v2, v0
:goto_34
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a2
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
float-to-int v3, v0
:goto_3f
const-string v0, "customClosePosition"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
const-string v0, "offsetX"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, "offsetY"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_a0
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
float-to-int v6, v1
:goto_62
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_6d
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
float-to-int v5, v0
:cond_6d
const-string v0, "allowOffscreen"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v7
invoke-virtual {v10}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/t;->b(Landroid/content/Context;)I
move-result v8
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/t;->a(Landroid/content/Context;)I
move-result v9
new-instance v0, Lcom/millennialmedia/android/aq;
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
invoke-direct/range {v0 .. v9}, Lcom/millennialmedia/android/aq;-><init>(FIILjava/lang/String;IIZII)V
invoke-virtual {v10, v0}, Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/aq;)V
invoke-static {}, Lcom/millennialmedia/android/cg;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
goto/16 :goto_18
:cond_9d
const/4 v0, 0x0
goto/16 :goto_18
:cond_a0
move v6, v5
goto :goto_62
:cond_a2
move v3, v5
goto :goto_3f
:cond_a4
move v2, v5
goto :goto_34
.end method
.method  b(Landroid/content/Context;)I
.registers 3
invoke-static {p1}, Lcom/millennialmedia/android/co;->p(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method