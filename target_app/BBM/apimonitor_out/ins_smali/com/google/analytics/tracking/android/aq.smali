.class public final Lcom/google/analytics/tracking/android/aq;
.super Ljava/lang/Object;
.source "Log.java"
.field private static a:Lcom/google/analytics/tracking/android/an;
.method public static a(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->d(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static a()Z
.registers 2
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v0
if-eqz v0, :cond_15
sget-object v0, Lcom/google/analytics/tracking/android/as;->a:Lcom/google/analytics/tracking/android/as;
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v1
invoke-interface {v1}, Lcom/google/analytics/tracking/android/ar;->a()Lcom/google/analytics/tracking/android/as;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/analytics/tracking/android/as;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private static b()Lcom/google/analytics/tracking/android/ar;
.registers 1
sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;
if-nez v0, :cond_a
invoke-static {}, Lcom/google/analytics/tracking/android/an;->a()Lcom/google/analytics/tracking/android/an;
move-result-object v0
sput-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;
:cond_a
sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;
if-eqz v0, :cond_13
sget-object v0, Lcom/google/analytics/tracking/android/aq;->a:Lcom/google/analytics/tracking/android/an;
iget-object v0, v0, Lcom/google/analytics/tracking/android/an;->c:Lcom/google/analytics/tracking/android/ar;
:goto_12
return-object v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public static b(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->b(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static c(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->a(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static d(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/google/analytics/tracking/android/aq;->b()Lcom/google/analytics/tracking/android/ar;
move-result-object v0
if-eqz v0, :cond_9
invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/ar;->c(Ljava/lang/String;)V
:cond_9
return-void
.end method