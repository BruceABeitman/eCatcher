.class  Lcom/millennialmedia/android/f;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final b:Ljava/lang/String;
.field  a:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/millennialmedia/android/f;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/millennialmedia/android/f;->b:Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/f;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private f()Lorg/json/JSONObject;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v2, "android.permission.ACCESS_FINE_LOCATION"
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v0
const-string v3, "android.permission.ACCESS_FINE_LOCATION"
invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_14
invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
return-object v1
:cond_18
const/4 v0, 0x0
goto :goto_14
.end method
.method private g()Lorg/json/JSONObject;
.registers 4
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "height"
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "width"
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-object v0
.end method
.method private h()Lorg/json/JSONObject;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v1
const-string v2, "sms"
invoke-static {v1}, Lcom/millennialmedia/android/co;->v(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v3
invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v2, "tel"
invoke-static {v1}, Lcom/millennialmedia/android/co;->w(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "calendar"
invoke-static {}, Lcom/millennialmedia/android/co;->e()Z
move-result v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "storePicture"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "inlineVideo"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
return-object v0
.end method
.method  a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/f;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
return-object v0
.end method
.method public a(Landroid/view/View;)Lorg/json/JSONObject;
.registers 6
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string v0, "screen"
invoke-direct {p0}, Lcom/millennialmedia/android/f;->g()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "ad"
invoke-static {p1}, Lcom/millennialmedia/android/dh;->a(Landroid/view/View;)Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "do"
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/millennialmedia/android/co;->x(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "supports"
invoke-direct {p0}, Lcom/millennialmedia/android/f;->h()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "device"
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v2
invoke-static {v2}, Lcom/millennialmedia/android/w;->a(Landroid/content/Context;)Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "permissions"
invoke-direct {p0}, Lcom/millennialmedia/android/f;->f()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "maxSize"
invoke-direct {p0}, Lcom/millennialmedia/android/f;->g()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_4c
:try_end_4c
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4c} :catch_4d
return-object v1
:catch_4d
move-exception v0
sget-object v2, Lcom/millennialmedia/android/f;->b:Ljava/lang/String;
const-string v3, "Error when building ad properties"
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4c
.end method
.method  b()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
int-to-float v1, v1
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
div-float v0, v1, v0
float-to-int v0, v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  c()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->a()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v1, v1
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
div-float v0, v1, v0
float-to-int v0, v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  d()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->b()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method  e()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/android/f;->c()Ljava/lang/String;
move-result-object v0
return-object v0
.end method