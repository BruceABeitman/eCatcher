.class public Lcom/admarvel/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/admarvel/android/a/b;
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Lcom/admarvel/android/a/b;
invoke-direct {v1, p1}, Lcom/admarvel/android/a/b;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/admarvel/android/a/a;->a:Lcom/admarvel/android/a/b;
invoke-static {}, Lcom/admarvel/android/a/a;->b()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_21
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
new-instance v2, Lcom/admarvel/android/a/a$a;
invoke-direct {v2, p0, v0}, Lcom/admarvel/android/a/a$a;-><init>(Lcom/admarvel/android/a/a;Lcom/admarvel/android/a/a$1;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_20
return-void
:cond_21
new-instance v1, Lcom/admarvel/android/a/c;
invoke-direct {v1}, Lcom/admarvel/android/a/c;-><init>()V
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
check-cast v0, Ljava/lang/Object;
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/admarvel/android/a/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_20
.end method
.method public static b()I
.registers 2
sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
const-string v1, "1.5"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x3
:goto_b
return v0
:cond_c
invoke-static {}, Lcom/admarvel/android/a/d;->a()I
move-result v0
goto :goto_b
.end method
.method public a()V
.registers 5
iget-object v1, p0, Lcom/admarvel/android/a/a;->a:Lcom/admarvel/android/a/b;
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v0, 0x0
check-cast v0, Ljava/lang/Object;
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/admarvel/android/a/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method