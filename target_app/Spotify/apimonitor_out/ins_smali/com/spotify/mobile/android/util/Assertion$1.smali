.class final Lcom/spotify/mobile/android/util/Assertion$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/i;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_39
const-string v1, "%s: %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->getMessage()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
aput-object v0, v2, v5
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_1c
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->a()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2b
const-string v1, "Details: %s"
new-array v2, v5, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_2b
const-class v0, Lcom/spotify/mobile/android/util/Assertion;
const-class v1, Lcom/spotify/mobile/android/util/cv;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/cv;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/cv;->a(Ljava/lang/Throwable;)V
return-void
:cond_39
const-string v0, "%s"
new-array v1, v5, [Ljava/lang/Object;
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Assertion$RecoverableAssertionError;->getMessage()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v4
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_1c
.end method
.method public final a(Ljava/lang/AssertionError;)V
.registers 4
const-class v0, Lcom/spotify/mobile/android/util/Assertion;
const-class v1, Lcom/spotify/mobile/android/util/cv;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/cv;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/cv;->a(Ljava/lang/Throwable;)V
return-void
.end method