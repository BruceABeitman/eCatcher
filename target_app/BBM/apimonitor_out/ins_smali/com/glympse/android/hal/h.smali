.class  Lcom/glympse/android/hal/h;
.super Landroid/content/BroadcastReceiver;
.source "ActivityProvider.java"
.field final synthetic B:Lcom/glympse/android/hal/g;
.method private constructor <init>(Lcom/glympse/android/hal/g;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/h;->B:Lcom/glympse/android/hal/g;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/g;Lcom/glympse/android/hal/g$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/h;-><init>(Lcom/glympse/android/hal/g;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
:try_start_0
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->hasResult(Landroid/content/Intent;)Z
move-result v0
if-eqz v0, :cond_43
invoke-static {p2}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->extractResult(Landroid/content/Intent;)Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;
move-result-object v0
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/ActivityRecognitionResult;->getMostProbableActivity()Lcom/glympse/android/hal/gms/location/DetectedActivity;
move-result-object v0
if-eqz v0, :cond_43
iget-object v1, p0, Lcom/glympse/android/hal/h;->B:Lcom/glympse/android/hal/g;
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/DetectedActivity;->getType()I
move-result v2
invoke-static {v1, v2}, Lcom/glympse/android/hal/g;->a(Lcom/glympse/android/hal/g;I)I
move-result v1
invoke-virtual {v0}, Lcom/glympse/android/hal/gms/location/DetectedActivity;->getConfidence()I
move-result v2
iget-object v0, p0, Lcom/glympse/android/hal/h;->B:Lcom/glympse/android/hal/g;
invoke-static {v0}, Lcom/glympse/android/hal/g;->a(Lcom/glympse/android/hal/g;)Ljava/util/Hashtable;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_2c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/hal/GActivityListener;
invoke-interface {v0, v1, v2}, Lcom/glympse/android/hal/GActivityListener;->activityRecognized(II)V
:try_end_41
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_41} :catch_42
goto :goto_2c
:catch_42
move-exception v0
:cond_43
return-void
.end method