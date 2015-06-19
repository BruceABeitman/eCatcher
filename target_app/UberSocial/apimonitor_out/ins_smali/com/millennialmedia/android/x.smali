.class  Lcom/millennialmedia/android/x;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "adjustVideo"
.field private static final d:Ljava/lang/String; = "insertVideo"
.field private static final e:Ljava/lang/String; = "pauseVideo"
.field private static final f:Ljava/lang/String; = "playVideo"
.field private static final g:Ljava/lang/String; = "removeVideo"
.field private static final h:Ljava/lang/String; = "resumeVideo"
.field private static final i:Ljava/lang/String; = "setStreamVideoSource"
.field private static final j:Ljava/lang/String; = "stopVideo"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
return-void
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
const-string v1, "adjustVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:cond_d
:goto_d
return-object v0
:cond_e
const-string v1, "insertVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1b
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_1b
const-string v1, "pauseVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_28
const-string v1, "playVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_35
const-string v1, "removeVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_42
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_42
const-string v1, "resumeVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4f
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_4f
const-string v1, "setStreamVideoSource"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
:cond_5c
const-string v1, "stopVideo"
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/x;->e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
.end method
.method public a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$1;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/x$1;-><init>(Lcom/millennialmedia/android/x;Ljava/util/Map;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$2;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/x$2;-><init>(Lcom/millennialmedia/android/x;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$3;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/x$3;-><init>(Lcom/millennialmedia/android/x;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public d(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$4;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/x$4;-><init>(Lcom/millennialmedia/android/x;Ljava/util/Map;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public e(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$5;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/x$5;-><init>(Lcom/millennialmedia/android/x;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public f(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$6;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/x$6;-><init>(Lcom/millennialmedia/android/x;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public g(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$7;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/x$7;-><init>(Lcom/millennialmedia/android/x;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method
.method public h(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
new-instance v0, Lcom/millennialmedia/android/x$8;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/x$8;-><init>(Lcom/millennialmedia/android/x;Ljava/util/Map;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/x;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method