.class  Lcom/millennialmedia/android/u$1;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lorg/json/JSONArray;
.field final synthetic f:Lcom/millennialmedia/android/u;
.method constructor <init>(Lcom/millennialmedia/android/u;Landroid/content/Context;Lorg/json/JSONArray;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/android/u$1;->f:Lcom/millennialmedia/android/u;
iput-object p2, p0, Lcom/millennialmedia/android/u$1;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/millennialmedia/android/u$1;->b:Lorg/json/JSONArray;
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
return-void
.end method
.method  a(Lcom/millennialmedia/android/ai;)Z
.registers 4
instance-of v0, p1, Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/millennialmedia/android/u$1;->a:Landroid/content/Context;
invoke-virtual {p1, v0}, Lcom/millennialmedia/android/ai;->d(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->a()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/millennialmedia/android/u$1;->b:Lorg/json/JSONArray;
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:cond_1b
const/4 v0, 0x1
return v0
.end method