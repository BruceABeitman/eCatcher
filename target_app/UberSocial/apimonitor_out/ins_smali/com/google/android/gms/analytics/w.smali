.class public Lcom/google/android/gms/analytics/w;
.super Ljava/lang/Object;
.field private static a:Lcom/google/android/gms/analytics/c;
.method public static a(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/o;->d(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static a()Z
.registers 2
const/4 v0, 0x0
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v1
if-eqz v1, :cond_12
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v1
invoke-interface {v1}, Lcom/google/android/gms/analytics/o;->a()I
move-result v1
if-nez v1, :cond_12
const/4 v0, 0x1
:cond_12
return v0
.end method
.method private static b()Lcom/google/android/gms/analytics/o;
.registers 1
sget-object v0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/c;
if-nez v0, :cond_a
invoke-static {}, Lcom/google/android/gms/analytics/c;->a()Lcom/google/android/gms/analytics/c;
move-result-object v0
sput-object v0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/c;
:cond_a
sget-object v0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/c;
if-eqz v0, :cond_15
sget-object v0, Lcom/google/android/gms/analytics/w;->a:Lcom/google/android/gms/analytics/c;
invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->d()Lcom/google/android/gms/analytics/o;
move-result-object v0
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public static b(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/o;->b(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/o;->a(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static d(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/android/gms/analytics/w;->b()Lcom/google/android/gms/analytics/o;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/o;->c(Ljava/lang/String;)V
:cond_9
return-void
.end method