.class  Lcom/millennialmedia/android/cg;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final f:I = 0x0
.field static final g:I = 0x1
.field private static final h:Ljava/lang/String; = "MMJSResponse"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.field  c:I
.field  d:Ljava/lang/Object;
.field  e:[B
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a()Lcom/millennialmedia/android/cg;
.registers 1
const-string v0, "Success."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method static a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/cg;
invoke-direct {v0}, Lcom/millennialmedia/android/cg;-><init>()V
const/4 v1, 0x1
iput v1, v0, Lcom/millennialmedia/android/cg;->c:I
iput-object p0, v0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
return-object v0
.end method
.method static b()Lcom/millennialmedia/android/cg;
.registers 1
const-string v0, "An unknown error occured."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method static b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/cg;
invoke-direct {v0}, Lcom/millennialmedia/android/cg;-><init>()V
const/4 v1, 0x0
iput v1, v0, Lcom/millennialmedia/android/cg;->c:I
iput-object p0, v0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
return-object v0
.end method
.method  c()Ljava/lang/String;
.registers 5
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
if-eqz v1, :cond_10
const-string v1, "class"
iget-object v2, p0, Lcom/millennialmedia/android/cg;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_10
iget-object v1, p0, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
if-eqz v1, :cond_1b
const-string v1, "call"
iget-object v2, p0, Lcom/millennialmedia/android/cg;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1b
const-string v1, "result"
iget v2, p0, Lcom/millennialmedia/android/cg;->c:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
if-eqz v1, :cond_32
const-string v1, "response"
iget-object v2, p0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_2d
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_43
:goto_2d
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
:goto_31
return-object v0
:cond_32
:try_start_32
iget-object v1, p0, Lcom/millennialmedia/android/cg;->e:[B
if-eqz v1, :cond_50
const-string v1, "response"
iget-object v2, p0, Lcom/millennialmedia/android/cg;->e:[B
const/4 v3, 0x0
invoke-static {v2, v3}, Lcom/millennialmedia/android/s;->b([BZ)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_42
.catch Lorg/json/JSONException; {:try_start_32 .. :try_end_42} :catch_43
goto :goto_2d
:catch_43
move-exception v0
const-string v1, "MMJSResponse"
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, ""
goto :goto_31
:try_start_50
:cond_50
const-string v0, ""
:try_end_52
.catch Lorg/json/JSONException; {:try_start_50 .. :try_end_52} :catch_43
goto :goto_31
.end method