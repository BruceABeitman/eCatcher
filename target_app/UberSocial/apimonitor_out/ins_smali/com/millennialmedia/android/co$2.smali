.class final Lcom/millennialmedia/android/co$2;
.super Lcom/millennialmedia/android/c;
.source "SourceFile"
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/co$2;->a:Landroid/content/Context;
invoke-direct {p0}, Lcom/millennialmedia/android/c;-><init>()V
return-void
.end method
.method  a(Lcom/millennialmedia/android/ai;)Z
.registers 8
const/4 v5, 0x1
const-string v1, "MMSDK"
const-string v2, "%s %s is %son disk. Is %sexpired."
const/4 v0, 0x4
new-array v3, v0, [Ljava/lang/Object;
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->d()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v5
const/4 v4, 0x2
iget-object v0, p0, Lcom/millennialmedia/android/co$2;->a:Landroid/content/Context;
invoke-virtual {p1, v0}, Lcom/millennialmedia/android/ai;->d(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_35
const-string v0, ""
:goto_20
aput-object v0, v3, v4
const/4 v4, 0x3
invoke-virtual {p1}, Lcom/millennialmedia/android/ai;->a()Z
move-result v0
if-eqz v0, :cond_38
const-string v0, ""
:goto_2b
aput-object v0, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->c(Ljava/lang/String;Ljava/lang/String;)V
return v5
:cond_35
const-string v0, "not "
goto :goto_20
:cond_38
const-string v0, "not "
goto :goto_2b
.end method